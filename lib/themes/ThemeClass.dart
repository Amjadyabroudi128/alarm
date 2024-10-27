
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
     backgroundColor: Colors.grey[200],
     timeSelectorSeparatorColor: seperator,
     cancelButtonStyle: btn(cancel),
     dialHandColor: Colors.black,
     confirmButtonStyle: btn(confirm),
     hourMinuteTextStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
   )
 );
 }