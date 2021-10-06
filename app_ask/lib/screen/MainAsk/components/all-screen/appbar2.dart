import 'dart:ui';

import 'package:app_ask/constants.dart';
import 'package:app_ask/models/ask.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState ();
}

class _CategoriesState  extends State<Categories>{
  List<String> categories = ["all", "new", "trend"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: SizedBox(
        height: 30,
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
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(left: kDefaultPadding / 2),
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding / 1,
          vertical: kDefaultPadding / 10,
        ),

        decoration: BoxDecoration(
          color: selectedIndex == index ? Color(0xFFEFF3EE) : Colors.transparent ,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 16,
            color: selectedIndex == index ? kPrimaryColor : Colors.blue[300],
          ),
        ),
        
      ),
    );
  }
}