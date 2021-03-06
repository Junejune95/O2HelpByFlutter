import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Roboto",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    cardTheme: cardTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

CardTheme cardTheme() {
  return CardTheme(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
    ),
    margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: BorderSide(color: Color(0xFF707070)),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    // focusColor: kSecondaryColor
  );
}

TextTheme textTheme() {
  return TextTheme(
    headline3: TextStyle(color: kPrimaryColor),
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 1,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: kPrimaryLightColor),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: kPrimaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
