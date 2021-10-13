// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:app_ask/screen/MainAsk/main_ask_screen.dart';
import 'package:app_ask/screen/welcome/welcome_screen.dart';
import 'package:app_ask/constants.dart';

import 'form/from.dart';

// ignore: use_key_in_widget_constructors
class SigninOrSignupScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // But still same problem, let's fixed it
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // SvgPicture.asset(
          //   "assets/icons/Sign_Up_bg.svg",
          //   height: MediaQuery.of(context).size.height,
          //   // Now it takes 100% of our height
          // ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Center(child: Image.asset(
                      "/Users/qwe/Documents/GitHub/flutter-app-ask/app_ask/assets/image/raising-hands.png",
                      scale: 1.2,
                    )
                    ), 

                    const SizedBox(height: kDefaultPadding ),

                    Text(
                      "Sign In",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),

                    Row(
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainAskScreen(),
                            ),
                          ),
                          child: Text(
                            "Sign Up!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: kDefaultPadding * 2),

                    SignInForm(formKey: _formKey),
                    
                    const SizedBox(height: kDefaultPadding * 2),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Sign up form is done
                            // It saved our inputs
                            _formKey.currentState!.save();
                            //  Sign in also done
                          }
                        },
                        child: Text("Sign In"),
                      ),
                    ),

                    Row (
                      children: [

                        SizedBox(width: kDefaultPadding * 6.7),
                        
                        Text(
                          "or",
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainAskScreen(),
                            ),
                          ),
                          child: Text(
                            "Guest login",
                            // textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: kDefaultPadding * 3,),

                    // SizedBox(width: kDefaultPadding * 3,),

                    FittedBox(
                        child: TextButton(
                        onPressed: () => Navigator.pop(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => WelcomeScreen(),
                          ),
                        ),

                        //button backward
                        child: Row(
                          children: [
                            SizedBox(width: kDefaultPadding * 7.5,),
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
                          ],
                        ),
                      ),
                    )

                  ],
                  
                ),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}



