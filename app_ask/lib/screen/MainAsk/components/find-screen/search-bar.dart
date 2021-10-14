// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_ask/screen/SigninOrSignup/signin_or_signup_screen.dart';
import 'package:app_ask/constants.dart';
import 'package:app_ask/screen/MainAsk/main_ask_screen.dart';

class AnimatedSearchBar extends StatefulWidget {
  @override
  _AnimatedSearchBar createState() => _AnimatedSearchBar();
}

class _AnimatedSearchBar extends State<AnimatedSearchBar> {
  bool _folded = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(microseconds: 400),
    width: _folded ? 56 : 200,
    height: 56,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(32),
      color: Colors.white,
      boxShadow: kElevationToShadow[6],
    ),
    child: Row(
      children: [
        Expanded(child: Container(
          padding: EdgeInsets.only(left: 16),
          child: !_folded
          ? TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.blue[300], fontWeight: FontWeight.bold),
              border: InputBorder.none),
              
            )
          : null,
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 400),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(_folded ? 32 : 0),
                topRight: Radius.circular(32) ,
                bottomLeft: Radius.circular(_folded ? 32 : 0),
                bottomRight: Radius.circular(32),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  _folded ? Icons.search : Icons.close,
                  color: Colors.blue[900],
                ),
              ),
              onTap: () {
                setState(() {
                  _folded = !_folded;
                });
              },
            ),
          )
        )
      ],
    ),
    );
  }
}