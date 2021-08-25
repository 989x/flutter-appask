import 'package:flutter/material.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => Text("ask ask ask"),
          ),
        ),

      ],
    );
      
  }
}