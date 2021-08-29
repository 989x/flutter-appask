import 'package:app_ask/constants.dart';
import 'package:app_ask/models/ask.dart';
import 'package:app_ask/screen/MainAsk/components/body.dart';
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
      appBar: buildAppBar(
      ),

    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: Text('sample'),
    //       bottom: TabBar(
    //         tabs: <Widget>[
    //           Tab(
    //             text: '1',
    //           )
    //         ] ),
    //     ),
    //   ),
    
      body: Body(),

      
      //
      // add new
      
      // body: FutureBuilder(
      //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {  
      //     if (snapshot.hasData) {
      //       List<Ask>ask=snapshot.data;
      //       return ListView.builder(
      //         itemCount: ask.length,
      //         itemBuilder: (context, index) =>
      //           customListTile(ask[index], context),
      //       );
      //     }
      //     return Center(
      //       child: CircularProgressIndicator(),
      //     );
      //   },
     
      // ),

      //

      //botton menu
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value){
          setState(() {
            _selectedIndex = value;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore_rounded), 
            label: "find",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.alt_route_rounded), 
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
      ),
    );
  }

  //Bar title
  AppBar buildAppBar() {
    return AppBar(
      // automaticallyImplyLeading: false,
      title: const Text("community"),
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        
      ],
    );
  }
}