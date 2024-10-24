
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
     ),
     cancelButtonStyle: ButtonStyle(
       foregroundColor: WidgetStateProperty.all<Color>(Colors.red),
     ),
     confirmButtonStyle: ButtonStyle(
       foregroundColor: WidgetStateProperty.all<Color>(Colors.green),
     )
   )
 );
 }