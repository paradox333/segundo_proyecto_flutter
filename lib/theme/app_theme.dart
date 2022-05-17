import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.deepPurple;
  static const Color secondary = Colors.green;
  static const Color special = Colors.deepOrange;

  static final ThemeData darkTheme =  ThemeData.dark().copyWith(
    // Color primario
    primaryColor: primary, 
    
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
      ),
    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),
    //FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),
    // ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0,
        padding: const EdgeInsets.all(15)
        )
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primary ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ), 
      focusedBorder:  OutlineInputBorder(
        borderSide: BorderSide( color: primary),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      )
    ),    
  );



  static final ThemeData lightTheme =  ThemeData.light().copyWith(
    // Color primario
    primaryColor: secondary, 
    
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: secondary,
      elevation: 0
      ),
    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: secondary)
    ),
    //FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: secondary,
    ),
    // ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: secondary,
        shape: const StadiumBorder(),
        elevation: 0,
        padding: const EdgeInsets.all(15)
        )
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: secondary ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: secondary),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ), 
      focusedBorder:  OutlineInputBorder(
        borderSide: BorderSide( color: secondary),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      )
    ),
     
  );



  static final ThemeData HwTheme =  ThemeData.dark().copyWith(
    // Color primario
    primaryColor: special, 
    
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: special,
      elevation: 0
      ),
    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: special)
    ),
    //FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: special,
    ),
    // ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: special,
        shape: const StadiumBorder(),
        elevation: 0,
        padding: const EdgeInsets.all(15)
        )
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: special ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: special),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ), 
      focusedBorder:  OutlineInputBorder(
        borderSide: BorderSide( color: special),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      )
    ),    
  );

 
  
 
}