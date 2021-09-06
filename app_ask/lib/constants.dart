import 'package:flutter/material.dart';

// const kPrimaryColor = Color(0xFF00BF6D);
const kPrimaryColor = Colors.blue;
const kSecondaryColor = Color(0xFFFE9901);

const kContentColorLightTheme = Color(0xFF1D1D35);


const kWarninngColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);

const kDefaultPadding = 20.0;




class SizeConfig {
  
  static double kDefaultSize = 0.2;

  // static MediaQueryData _mediaQueryData;
  // static double screenWidth;
  // static double screenHeight;
  // static double defaultSize;
  // static Orientation orientation;

  void init(BuildContext context) {
  //   _mediaQueryData = MediaQuery.of(context);
  //   screenWidth = _mediaQueryData.size.width;
  //   screenHeight = _mediaQueryData.size.height;
  //   orientation = _mediaQueryData.orientation;
  //   // On iPhone 11 the defaultSize = 10 almost
  //   // So if the screen size increase or decrease then our defaultSize also vary
  //   defaultSize = orientation == Orientation.landscape
  //       ? screenHeight * 0.024
  //       : screenWidth * 0.024;
  }
}