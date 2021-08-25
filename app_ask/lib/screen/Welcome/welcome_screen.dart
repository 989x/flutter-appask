import 'package:flutter/material.dart';
import 'package:app_ask/screen/SigninOrSingup/signin_or_singup_screen.dart';
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
            Image.asset("/Users/qwe/Documents/GitLab/flutter-app-ask/app_ask/assets/image/gretting.png"),
            Spacer(flex: 1),
            Text(
              "Welcome to app ask \n You can ask anything",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                .textTheme 
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(flex: 1),
            Text(
              "good to meet you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .color!
                  .withOpacity(0.7),
              ),
            ),
            Spacer(flex: 1),
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
