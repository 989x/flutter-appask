
// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:app_ask/constants.dart';
import 'package:app_ask/models/ask.dart';
import 'package:app_ask/screen/MainAsk/components/all-screen/body.dart';
import 'package:flutter/material.dart';

import 'package:app_ask/screen/MainAsk/components/old-appbar.dart';

import 'components/all-screen/body.dart';

import 'package:app_ask/screen/MainAsk/components/all-screen/appbar.dart';
import 'package:app_ask/screen/MainAsk/components/all-screen/all-screen.dart';


class MainAskScreen extends StatefulWidget {
  @override
  State<MainAskScreen> createState() => _MainAskScreenState();
}

class _MainAskScreenState extends State<MainAskScreen> {

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Text('1'),
    Workss(),
    Text('333'),
    // Bodyclone(),
    Text('4444'),
    Workss(),

  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(),
  //   );
  // }
  

  Widget build(BuildContext context) {

    return Scaffold(

      // appBar: buildAppBar(),
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
   
      //botton menu
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _selectedIndex,
        // onTap: (value){
        //   setState(() {
        //     _selectedIndex = value;
        //   });
        // },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore_rounded), 
            label: "find",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alt_route_rounded), 
            label: "all",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_help_outlined), 
            label: "ask now"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox), 
            label: "new+"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy_outlined), 
            label: "me"
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }

}