// ignore_for_file: file_names

import 'package:flutter/material.dart';
  
AppBar buildAppBar() {
  return AppBar(
    // automaticallyImplyLeading: false,
    leading: IconButton(
        icon: const Icon(Icons.menu),
        color: Colors.black,
        onPressed: () {},
    ),

    centerTitle: true,

    title: const Text(
      "community",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        ),
      ),

    actions: [
      IconButton(
        // ignore: prefer_const_constructors
        icon: Icon(Icons.chat_bubble_outline_rounded),
        color: Colors.black,
        onPressed: () {},
      ),

      const SizedBox(
        height: 8,
      ),
    ],
    
  );
}
