import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'consts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentTime = DateTime.now();
   TimeOfDay selectedTime = TimeOfDay.now();
  final hourandMinute = DateFormat("Hm");
  Future<void> _selectDate() async {
    final TimeOfDay? timeOfDay = await showTimePicker(context: context,
        initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial
    );
    if(timeOfDay != null) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              clock,
              Text("${hourandMinute.format(currentTime)}",
                style: timeStyle,),
              ElevatedButton(
                onPressed: _selectDate,
                child: Text("select Time"),
              )
            ],
          ),
        ),
      ),
    );
  }
}