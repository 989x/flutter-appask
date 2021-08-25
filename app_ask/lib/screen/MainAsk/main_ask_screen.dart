import 'package:flutter/material.dart';
import 'package:app_ask/screen/SigninOrSingup/signin_or_singup_screen.dart';
import 'package:app_ask/constants.dart';

class MainAskScreen extends StatefulWidget {
  @override
  State<MainAskScreen> createState() => _MainAskScreenState();
}

class _MainAskScreenState extends State<MainAskScreen> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.alt_route), 
            label: "all",
            backgroundColor: Colors.blue,          
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: "find",
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.live_help_outlined), 
            label: "ask now",
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy_outlined), 
            label: "me",
            backgroundColor: Colors.blue,
          ),
          
        ],
      ),
    ); 
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("community ask"),

      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {},
        )
      ],
    );
  }
}
