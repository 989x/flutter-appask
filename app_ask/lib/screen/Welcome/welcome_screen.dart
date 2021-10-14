import 'package:flutter/material.dart';
import 'package:app_ask/screen/SigninOrSignup/signin_or_signup_screen.dart';
import 'package:app_ask/constants.dart';
import 'package:app_ask/screen/MainAsk/main_ask_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(  
          children: [
            Spacer(flex: 1),

            Center(child: Image.asset(
              "/Users/qwe/Documents/GitHub/flutter-app-ask/app_ask/assets/image/waving-hand.png",
              scale: 1.2,
            )
            ),

            Spacer(flex: 1),

            //text 1
            Text(
              "Welcome to app ask \n You can ask anything",
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
              "\"The world is freedom\"",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                .textTheme 
                .headline6!
                .copyWith(fontWeight: FontWeight.bold)
                .apply(fontSizeFactor: 1.0),
            ),

            Spacer(flex: 1),

            //text 3
            Text(
              "Good to meet you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .color!
                  .withOpacity(0.7)
                  ,
              ),  
            ),

            Spacer(flex: 1),

            // button for next page
            FittedBox(
              child: TextButton(
                onPressed: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => SigninOrSignupScreen(),
                ),
              ),
                child: Row(
                  children: [
                    Text(
                      "next",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.8),
                      ),
                    ),
                    SizedBox(width: kDefaultPadding / 4,),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color!
                        .withOpacity(0.8),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ); 
  }
}
