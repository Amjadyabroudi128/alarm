
 import 'package:flutter/material.dart';

import '../consts.dart';

class MyTheme {
 static final theme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
   style: ElevatedButton.styleFrom(
    backgroundColor: btnClr,
    minimumSize: btnSize,
   )
  )
 );
 }