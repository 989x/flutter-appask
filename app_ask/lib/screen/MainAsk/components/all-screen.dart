
// ignore_for_file: file_names, unused_import, prefer_const_constructors

import 'package:app_ask/constants.dart';
import 'package:app_ask/models/ask.dart';
import 'package:app_ask/screen/MainAsk/components/body.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

import '../components/body.dart';

// import '../components/appbar.dart';
// import '../components/appbar2.dart';

import 'appbar.dart';

class Workss extends StatelessWidget {
  const Workss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),

      body: SafeArea(
        child: Body()
      ),

      // body: ,
    );
  }
}
