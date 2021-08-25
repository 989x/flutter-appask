import 'package:flutter/material.dart';
import 'package:app_ask/screen/MainAsk/main_ask_screen.dart';
import 'package:app_ask/screen/welcome/welcome_screen.dart';
import 'package:app_ask/constants.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(  
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [  
              Spacer(flex: 1),
              Image.asset("/Users/qwe/Documents/GitLab/flutter-app-ask/app_ask/assets/image/login.png"),            
              Spacer(flex: 1),

              Text(
              "You must first login",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                .textTheme 
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
            ),

              Spacer(flex: 1),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () { 
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder : (context) => MainAskScreen()),
                  ); 
                },
                child: Text(' Sign In '),
                
              ),

              SizedBox(height: kDefaultPadding * 1,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () { 
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder : (context) => MainAskScreen()),
                  ); 
                },
                child: Text('Sign Up'),
              ),

              Spacer(flex: 1),

            FittedBox(
        
              child: TextButton(
                onPressed: () => Navigator.pop(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => WelcomeScreen(),
                ),
              ),

                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color!
                        .withOpacity(0.8),
                    ),
                    SizedBox(width: kDefaultPadding / 10,),
                    Text(
                      "back",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.8),
                      ),
                    ),
           
                    // Icon(
                    //   Icons.arrow_back_ios,
                    //   size: 16,
                    //   color: Theme.of(context)
                    //     .textTheme
                    //     .bodyText1!
                    //     .color!
                    //     .withOpacity(0.8),
                    // ),
                    // SizedBox(width: kDefaultPadding / 10,),
                    // Text(
                    //   "back",
                    //   style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    //     color: Theme.of(context)
                    //       .textTheme
                    //       .bodyText1!
                    //       .color!
                    //       .withOpacity(0.8),
                    //   ),
                    // ),
                    
                  ],
                  
             
                ),
              ),
            ),
            ],
          ),
          

        ),
      ),
    ); 
  }
}

class PrimaryButton {
  PrimaryButton(Text text);
}
