// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:app_ask/constants.dart';
import 'package:app_ask/models/ask.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

import '../../components/all-screen/appbar2.dart';

class SimpleAppBarPage extends StatefulWidget {

  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();

}

class _SimpleAppBarPageState extends State<SimpleAppBarPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 4,

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {},
        ),

        Text(
          "community",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),

        IconButton(
          icon: Icon(Icons.chat_bubble_outline_rounded),
          color: Colors.black,
          onPressed: () {},
        ),

      ],
    ),

    // child: Scaffold(
    //   appBar: AppBar(

    //     leading: IconButton(
    //       icon: const Icon(Icons.menu),
    //       color: Colors.black,
    //       onPressed: () {},
    //     ),

    //     centerTitle: true,

    //     title: const Text(
    //       "community",
    //       style: TextStyle(
    //         fontWeight: FontWeight.bold,
    //         color: Colors.black,
    //       ),
    //     ),

    //     actions: [
    //       IconButton(
    //         // ignore: prefer_const_constructors
    //         icon: Icon(Icons.chat_bubble_outline_rounded),
    //         color: Colors.black,
    //         onPressed: () {},
    //       ),

    //       const SizedBox(
    //         height: 8,
    //       ),
    //     ],

    //   ),

    // )
    
  );
}



// class Bodyclone extends StatelessWidget {
//   const Bodyclone({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // ignore: prefer_const_constructors
//         Categories(),

//         // call from db
//         Expanded(child: ListView.builder(
//           itemCount: AskData.length,
//           itemBuilder: (
//             context, index) => AllArkBoard(
//               ask: AskData[index], 
//               press: () {  },),
//           )
//         )
//       ],
//     );
//   }
// }

// class AllArkBoard extends StatelessWidget {

//   //debug error
//   const AllArkBoard({
//     Key? key, 
//     required this.ask, 
//     required this.press,
//   }) : super(key: key);

//   final Ask ask;
//   final VoidCallback press;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(

//       //tab
//       onTap: press,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: kDefaultPadding, vertical: kDefaultPadding / 4
//         ),

//         child: Container (

//           //edit outside board
//           margin: const EdgeInsets.all(1),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: const [
//               BoxShadow(
//                 color: Colors.black12,
//                 blurRadius: 6,
//               ),
//             ]
//           ),

//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,

//               children: [

//                 // tag
//                 // Container(
//                 //   padding: EdgeInsets.all(6),
//                 //   decoration: BoxDecoration(
//                 //     color: Colors.red,
//                 //     borderRadius: BorderRadius.circular(30), 
//                 //   ),
//                 // ),

//                 //main post
//                 Row(
//                   children: [

//                     //avatar
//                     Padding(
//                       padding: const EdgeInsets.all(2),
//                       child: CircleAvatar(
//                         radius: 16,
//                         backgroundImage: AssetImage(
//                           ask.profile
//                         ),
//                       ),
//                     ),

//                     //name
//                     Padding(
//                       padding: 
//                         // const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                         const EdgeInsets.all(6),
//                         //form Column
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             ask.name,
//                             style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           const SizedBox(height: 2),
//                         ],
//                       ),
//                     ),

//                     //time
//                     Padding(
//                       padding: 
//                         const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
//                       child: Opacity(
//                         opacity: 0.8,
//                         child: Text(
//                           ask.time,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 8),

//                 //asking
//                 Text(
//                   ask.asking,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 15,
//                   ),
//                 ),

//                 const SizedBox(height: 8),

//                 Center(
//                   child: Container(
//                     alignment: Alignment.bottomCenter,
//                     height: 140,
//                     // width: 520.0,
//                     width: 300,
//                     decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage( 
//                         image: AssetImage(ask.image),
//                         // fit: BoxFit.fitHeight,
//                         // fit: BoxFit.contain,
//                         fit: BoxFit.fitWidth,
//                       ),  
//                     ),
//                   ),
//                 ),

//                 //button post
//                 Row(

//                   //uppost
//                   children: <Widget>[
//                     IconButton(
//                       icon: const Icon(Icons.upload_rounded),
//                       iconSize: 25,
//                       onPressed: () => print('Like'),
//                     ),
//                     const Text(
//                       '400',
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),

//                     //downpost
//                     IconButton(
//                       icon: const Icon(Icons.download_rounded),
//                       iconSize: 25,
//                       onPressed: () => print('Like'),
//                     ),
//                     const Text(
//                       '60',
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),

//                     //comment
//                     IconButton(
//                       icon: const Icon(Icons.comment),
//                       iconSize: 25,
//                       onPressed: () => print('Like'),
//                     ),
//                     const Text(
//                       '30',
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),

//               ],
//             ),
//           ),
//         ),
//     );
//   }
// }