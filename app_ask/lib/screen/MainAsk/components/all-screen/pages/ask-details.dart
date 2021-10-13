// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:app_ask/constants.dart';

import 'package:app_ask/screen/MainAsk/components/all-screen/body.dart';

import 'package:app_ask/services%20/api_service.dart';

import '../../../../../models/results_model.dart';

import './ask-body.dart';

class ArticlePage extends StatelessWidget {

  const ArticlePage({
    Key? key,
    required this.results,
    required this.press,
  }) : super(key: key);

  final Results results;
  final VoidCallback press;
  
  // late final Results results;

  // ArticlePage({this.results}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        foregroundColor: Colors.black54,

        title:Text(
          results.asking,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black87,
          ),
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_rounded,
              color: Colors.black54,
            ),
            onPressed: () {},
          )
        ],

      ),
      
      body: SafeArea(
        child: ArticlePageBody(results: results, press: () {},),
      ),
    );
  }
}




