import 'package:app_ask/constants.dart';
import 'package:app_ask/models/ask.dart';
import 'package:app_ask/screen/MainAsk/components/all-screen/appbar.dart';
import 'package:app_ask/services%20/api_service.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

import '../../components/all-screen/appbar2.dart';

import '../../../../models/results_model.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late List<Results> asks;
  bool loading = true;

  Future fetch() async {
    final res = await ApiService().getResults();
    setState(() {
      asks = res.toList() as List<Results>;
      loading = false;
    });
  }

  @override
  void initState() {
    fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    if (loading) {
      return Text("Loading");
    }
    
    return Column(
      children: [
        SimpleAppBarPage(),

        // ignore: prefer_const_constructors
        Categories(),

        // call from db
        Expanded(
            child: ListView.builder(
          itemCount: asks.length,
          itemBuilder: (context, index) => AllArkBoard(
            ask: asks[index],
            press: () {},
          ),
        ))
      ],
    );
  }
}

class AllArkBoard extends StatelessWidget {
  //debug error
  const AllArkBoard({
    Key? key,
    required this.ask,
    required this.press,
  }) : super(key: key);

  final Results ask;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //tab
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
        child: Container(
          //edit outside board
          margin: const EdgeInsets.all(1),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                ),
              ]),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // tag
              // Container(
              //   padding: EdgeInsets.all(6),
              //   decoration: BoxDecoration(
              //     color: Colors.red,
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              // ),

              //main post
              Row(
                children: [
                  //avatar

                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(ask.profile),
                    ),
                  ),

                  //name
                  Padding(
                    padding:
                        // const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        const EdgeInsets.all(6),
                    //form Column
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ask.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 2),
                      ],
                    ),
                  ),

                  //time
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Opacity(
                      opacity: 0.8,
                      child: Text(
                        ask.time,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              //asking
              Text(
                ask.asking,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 8),

              Center(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 140,
                  // width: 520.0,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(ask.image),
                      // fit: BoxFit.fitHeight,
                      // fit: BoxFit.contain,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),

              //button post
              Row(
                //uppost
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.upload_rounded),
                    iconSize: 25,
                    onPressed: () => print('Like'),
                  ),
                  const Text(
                    '400',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //downpost
                  IconButton(
                    icon: const Icon(Icons.download_rounded),
                    iconSize: 25,
                    onPressed: () => print('Like'),
                  ),
                  const Text(
                    '60',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //comment
                  IconButton(
                    icon: const Icon(Icons.comment),
                    iconSize: 25,
                    onPressed: () => print('Like'),
                  ),
                  const Text(
                    '30',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
