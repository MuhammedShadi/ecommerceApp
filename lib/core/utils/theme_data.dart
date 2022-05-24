import 'package:flutter/material.dart';

import '../constants.dart';

ThemeData themeData(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme (){
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    titleTextStyle: TextStyle(color: Color(0xFF8D8D8D), fontSize: 18),
  );
}

TextTheme textTheme(){
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}