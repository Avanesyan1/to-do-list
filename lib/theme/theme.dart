// ignore_for_file: deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';

class myTheme{
 
  ThemeData light(){
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        headline4: TextStyle(color: Colors.white,fontSize:20,fontFamily:'PoetsenOne'),
        headline3: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold,fontFamily: 'PoetsenOne'),
        headline2: TextStyle(color:  Colors.black, fontSize: 20,fontFamily: 'PoetsenOne'),
        headline1: TextStyle(color: Colors.black,fontSize: 40,fontFamily: 'PoetsenOne'),
        bodyText1: TextStyle(color: Colors.black,fontFamily: 'PoetsenOne')));
  }
  ThemeData dark(){
    return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        headline4: TextStyle(color: Colors.white,fontSize:20,fontFamily:'PoetsenOne'),
        headline3: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold,fontFamily: 'PoetsenOne'),
        headline2: TextStyle(color:  Colors.white, fontSize: 20,fontFamily: 'PoetsenOne'),
        headline1: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'PoetsenOne'),
        bodyText1: TextStyle(color: Colors.grey,fontFamily: 'PoetsenOne')));
        
  }
}