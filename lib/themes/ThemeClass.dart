
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
     timeSelectorSeparatorColor: seperator,
     cancelButtonStyle: btn(cancel),
     confirmButtonStyle: btn(confirm)
   )
 );
 }