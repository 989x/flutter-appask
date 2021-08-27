import 'package:app_ask/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';


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
      
      body: Body(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value){
          setState(() {
            _selectedIndex = value;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: "find",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.alt_route), 
              label: "all",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_help_outlined), 
            label: "ask now"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications), 
            label: "new"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy_outlined), 
            label: "me"
          ),
          
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      // automaticallyImplyLeading: false,
      title: Text("community"),
      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ],
    );
  }
}