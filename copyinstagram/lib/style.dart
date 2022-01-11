import 'package:flutter/material.dart';

var theme = ThemeData(
  bottomNavigationBarTheme : BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(
      color: Colors.black,
    ),
    selectedLabelStyle : TextStyle(
      color: Colors.black,
    ),
    unselectedLabelStyle: TextStyle(
      color: Colors.black
    ),
    showSelectedLabels: false,
    showUnselectedLabels: false,


    elevation : 5,
  ),

  appBarTheme: AppBarTheme(
    color: Colors.white,
    elevation: 1,
    titleTextStyle: TextStyle(color : Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
    actionsIconTheme: IconThemeData(color : Colors.black),
    iconTheme: IconThemeData(    ),
    textTheme : TextTheme(
      headline1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  ),
);