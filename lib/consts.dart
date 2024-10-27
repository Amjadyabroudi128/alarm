
 
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Icon clock = const Icon(Icons.access_alarm_outlined, size: 90,);
//TextStyles
TextStyle timeStyle = const TextStyle(
    fontSize: 40, fontWeight: FontWeight.bold
);
TextStyle btnStyle =  TextStyle(color: btnText, fontSize: 20);
Size btnSize = Size(180, 49);
TextStyle HourMinute =  TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
// colors
 Color btnClr = Colors.purple;
 Color handle = Colors.black;
 Color cancel = Colors.red;
 Color confirm = Colors.green;
 Color seperate = Colors.brown;
 Color btnText = Colors.white;
 Color? clockBG = Colors.grey[200];
 Color? dayPeriod = Colors.purple[100];
 SizedBox mySpace = SizedBox(height: 7,);

 ButtonStyle btn(Color color){
  return ButtonStyle(
   foregroundColor: WidgetStateProperty.all<Color>(color),
  );
 }
 final WidgetStateProperty<Color> seperator = WidgetStateProperty.all(seperate);
