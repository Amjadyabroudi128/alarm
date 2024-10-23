
 import 'package:flutter/material.dart';

import '../consts.dart';

class MyTheme {
 static final theme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
   style: ElevatedButton.styleFrom(
    backgroundColor: btnClr,
    minimumSize: btnSize,
   )
  ),
   timePickerTheme: TimePickerThemeData(
     timeSelectorSeparatorColor: WidgetStateProperty.all<Color>(
       Colors.blue
     )
     // cancelButtonStyle: ButtonStyle(
     //   textStyle: WidgetStateProperty.all<TextStyle>(
     //     TextStyle(
     //       color: Colors.red
     //     )
     //   ),
     //     // backgroundColor: WidgetStateProperty.resolveWith((states) => Colors.red)
     // )
   )
 );
 }