
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
     backgroundColor: clockBG,
     timeSelectorSeparatorColor: seperator,
     cancelButtonStyle: btn(cancel),
     dialHandColor: Colors.black,
     confirmButtonStyle: btn(confirm),
     dayPeriodColor: dayPeriod,
     hourMinuteTextStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
   )
 );
 }