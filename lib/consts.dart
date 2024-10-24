
 
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Icon clock = const Icon(Icons.access_alarm_outlined, size: 90,);
//TextStyles
TextStyle timeStyle = const TextStyle(
    fontSize: 40, fontWeight: FontWeight.bold
);
TextStyle btnStyle = const TextStyle(color: Colors.white, fontSize: 20);
Size btnSize = Size(180, 49);

// colors
 Color btnClr = Colors.purple;
 SizedBox mySpace = SizedBox(height: 7,);

 ButtonStyle btn(Color color){
  return ButtonStyle(
   foregroundColor: WidgetStateProperty.all<Color>(color),
  );
 }
 final WidgetStateProperty<Color> seperator = WidgetStateProperty.all(Colors.brown);
