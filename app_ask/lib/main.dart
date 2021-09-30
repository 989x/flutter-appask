import 'package:app_ask/theme.dart';
import 'package:flutter/material.dart';
import 'package:app_ask/screen/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      
      theme: lightThemeData(
        context,
        
        // appBarTheme:AppBarTheme(color: Colors.white),
      ),

      home: WelcomeScreen(),
    );
  }
}
