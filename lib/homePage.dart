import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'consts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentTime;
  final hourandMinute = DateFormat("Hm");
  Future<void> _selectDate() async {
    await showDatePicker(context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(2100));
}
  @override
  void initState() {
    currentTime = DateTime.now();
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
                onPressed: (){},
                child: Text("select Time"),
              )
            ],
          ),
        ),
      ),
    );
  }
}