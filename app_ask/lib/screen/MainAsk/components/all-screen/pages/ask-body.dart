// ignore_for_file: file_names, prefer_const_constructors

import 'package:app_ask/constants.dart';
import 'package:app_ask/screen/MainAsk/components/all-screen/body.dart';

import 'package:flutter/material.dart';

import '../../../../../models/results_model.dart';

import 'package:app_ask/services%20/api_service.dart';

// import 'package:app_ask/constants.dart';

class ArticlePageBody extends StatelessWidget {

  const ArticlePageBody({
    Key? key,
    required this.results,
    required this.press,
  }) : super(key: key);

  final Results results;
  final VoidCallback press;
  
  // late final Results results;

  // ArticlePage({this.results}) ;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4
        ),

        child:  Container(
          margin: EdgeInsets.all(1),
          padding: EdgeInsets.all(8),
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
              Row(
                children: [
                  //avatar

                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(results.profile),
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
                          results.name,
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
                  Padding(padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding / 2),
                    child: Opacity(
                      opacity: 0.8,
                      child: Text(
                        results.time,
                          style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 8),
              
              //asking
              Text(
                results.asking,
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
                      image: NetworkImage(results.image),
                      // fit: BoxFit.fitHeight,
                      // fit: BoxFit.contain,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),

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




          //--------------  --------------  --------------  --------------  --------------  --------------  --------------




              const SizedBox(height: 16),
              
              Center(
                child: Text(
                  'comment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue[900],
                    
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                children: [
                  //avatar

                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(results.profile),
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
                          results.name,
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
                        results.time,
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
                results.asking,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 26),







              Row(
                children: [
                  //avatar

                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(results.profile),
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
                          results.name,
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
                        results.time,
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
                results.asking,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 26),





              Row(
                children: [
                  //avatar

                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(results.profile),
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
                          results.name,
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
                        results.time,
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
                results.asking,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 16),


              

            ],
          ),
        ),
      ),
    );
  }
}

