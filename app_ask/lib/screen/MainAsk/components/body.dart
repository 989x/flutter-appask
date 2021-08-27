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
          itemBuilder: (context, index) => AllArkBoard(ask: AskData[index]),
          )
        )
      ],
    );
  }
}

class AllArkBoard extends StatelessWidget {
  const AllArkBoard({
    Key? key, required this.ask,
  }) : super(key: key);

  final Ask ask;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding, vertical: kDefaultPadding * 2
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              //on the edge of the screen
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ask.name,
                  style: TextStyle(fontSize: 17, fontWeight:FontWeight.w500),
                  ),
                SizedBox(height: 8,),
                Text(
                  ask.asking,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}