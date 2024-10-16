import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentTime;
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
              Icon(
                Icons.access_alarm_outlined,
                size: 90,
              ),
              Text("${DateFormat("Hm").format(currentTime)}",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}