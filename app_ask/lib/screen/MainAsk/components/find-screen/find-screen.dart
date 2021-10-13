// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:app_ask/screen/SigninOrSignup/signin_or_signup_screen.dart';
import 'package:app_ask/constants.dart';
import 'package:app_ask/screen/MainAsk/main_ask_screen.dart';

class FindScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(  
          children: [
            Spacer(flex: 1),

            Center(child: Image.asset(
              "/Users/qwe/Documents/GitHub/flutter-app-ask/app_ask/assets/image/detective.png",
              scale: 1.5
            )
            ),

            Spacer(flex: 1),

            //text 1
            Text(
              "Welcome to findscreen \n You can search anything",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                .textTheme.apply(
                  bodyColor: Colors.purple[900],
                ) 
                .headline5!      
                .copyWith(fontWeight: FontWeight.bold)
                .apply(fontSizeFactor: 1.0),
            ),

            Spacer(flex: 1),

            //text 2
            Text(
              "\"Find something\"",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                .textTheme 
                .headline6!
                .copyWith(fontWeight: FontWeight.bold)
                .apply(fontSizeFactor: 1.0),
            ),

            Spacer(flex: 1),

            //text 3

            Spacer(flex: 1),

            // button for next page

          ],
        ),
      ),
    ); 
  }
}
