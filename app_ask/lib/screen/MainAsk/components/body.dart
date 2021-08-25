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
          itemBuilder: (context, index) => Text("test"),
          )
        )
      ],
    );
  }
}