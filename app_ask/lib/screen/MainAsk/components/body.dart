import 'package:app_ask/constants.dart';
import 'package:app_ask/models/ask.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //no
        Container(
          color: kPrimaryColor,
          child: Row(
            children: [
              //no
            ],
          ),
        ),
        //no

        Expanded(child: ListView.builder(
          itemCount: AskData.length,
          itemBuilder: (
            context, index) => AllArkBoard(
              ask: AskData[index], 
              press: () {  },),
          )
        )
      ],
    );
  }
}

class AllArkBoard extends StatelessWidget {
  const AllArkBoard({
    Key? key, 
    required this.ask, 
    required this.press,
  }) : super(key: key);

  final Ask ask;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      //tab
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 1.5
        ),

        //
        
        //

        child: Container(

          child: Container (

            margin: EdgeInsets.all(1),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                ),
              ]
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                //image
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(

                  ),
                ),

                //tag
                // Container(
                //   padding: EdgeInsets.all(6),
                //   decoration: BoxDecoration(
                //     color: Colors.red,
                //     borderRadius: BorderRadius.circular(30), 
                //   ),
                // ),

                //name
                Text(
                  ask.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                SizedBox(
                  height: 8,
                ),

                //asking
                Text(
                  ask.asking,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
            
        ),
      ),
    );
  }
}