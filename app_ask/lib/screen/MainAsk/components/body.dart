import 'package:app_ask/constants.dart';
import 'package:app_ask/models/ask.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [

//         //header
//         Container(
//           padding: EdgeInsets.fromLTRB(32.5, 3, 0, 0),
//           color: Colors.white,
//           child: Row(
//             children: [

//               //home
//               ElevatedButton.icon(
//                 onPressed: () {}, 
//                 icon: const Icon(Icons.timeline_rounded,), 
//                 label: Text('Home'),
//               ),

//               SizedBox(width: kDefaultPadding),
              
//               //Trand
//               ElevatedButton.icon(
//                 onPressed: () {}, 
//                 icon: const Icon(Icons.timeline_rounded,), 
//                 label: Text('Trend'),
//               ),

//               SizedBox(width: kDefaultPadding),
              
//               //Popular
//               ElevatedButton.icon(
//                 onPressed: () {}, 
//                 icon: const Icon(Icons.timeline_rounded,), 
//                 label: Text('Popular'),
//               ),
              
//             ],
//           ),
//         ),
        
//         //call from db 
//         // Expanded(child: ListView.builder(
//         //   itemCount: AskData.length,
//         //   itemBuilder: (
//         //     context, index) => AllArkBoard(
//         //       ask: AskData[index], 
//         //       press: () {  },),
//         //   )
//         // )
//       ],
//     );
//   }
// }

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Categories(),

        // call from db
        Expanded(child: ListView.builder(
          itemCount: AskData.length,
          itemBuilder: (
            context, index) => AllArkBoard(
              ask: AskData[index], 
              press: () {  },),
          )
        )
      ],
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState ();
}

class _CategoriesState  extends State<Categories>{
  List<String> categories = ["all", "new", "popular"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: SizedBox(
        height: 20,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategorItem(index),
        ),
      ),
    );
  }

  Widget buildCategorItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: kDefaultPadding / 2),
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding / 1,
          vertical: kDefaultPadding / 10,
        ),
        decoration: BoxDecoration(
          color: 
            selectedIndex == index ? Color(0xFFEFF3EE) : Colors.transparent ,
          borderRadius: BorderRadius.circular(
            kDefaultPadding,
          ),
        ),
        child: Text(
            categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 14,
              color: selectedIndex == index ? kPrimaryColor : Colors.blue[300],
            ),
          ),
      ),
    );
  }
}

class AllArkBoard extends StatelessWidget {

  //debug error
  const AllArkBoard({
    Key? key, 
    required this.ask, 
    required this.press,
  }) : super(key: key);

  final Ask ask;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      //tab
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4
        ),

        child: Container (

          //edit outside board
          margin: const EdgeInsets.all(1),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
              ),
            ]
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                // tag
                // Container(
                //   padding: EdgeInsets.all(6),
                //   decoration: BoxDecoration(
                //     color: Colors.red,
                //     borderRadius: BorderRadius.circular(30), 
                //   ),
                // ),

                //main post
                Row(
                  children: [

                    //avatar
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(
                          ask.profile
                        ),
                      ),
                    ),

                    //name
                    Padding(
                      padding: 
                        // const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        const EdgeInsets.all(6),
                        //form Column
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ask.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                        ],
                      ),
                    ),

                    //time
                    Padding(
                      padding: 
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                      child: Opacity(
                        opacity: 0.8,
                        child: Text(
                          ask.time,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                //asking
                Text(
                  ask.asking,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 8),

                Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 140,
                    // width: 520.0,
                    width: 300,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                      image: DecorationImage( 
                        image: AssetImage(ask.image),
                        // fit: BoxFit.fitHeight,
                        // fit: BoxFit.contain,
                        fit: BoxFit.fitWidth,
                      ),  
                    ),
                  ),
                ),

                //button post
                Row(

                  //uppost
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.upload_rounded),
                      iconSize: 25,
                      onPressed: () => print('Like'),
                    ),
                    const Text(
                      '400',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //downpost
                    IconButton(
                      icon: const Icon(Icons.download_rounded),
                      iconSize: 25,
                      onPressed: () => print('Like'),
                    ),
                    const Text(
                      '60',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //comment
                    IconButton(
                      icon: const Icon(Icons.comment),
                      iconSize: 25,
                      onPressed: () => print('Like'),
                    ),
                    const Text(
                      '30',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
    );
  }
}