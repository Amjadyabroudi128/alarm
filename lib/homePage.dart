import 'package:alarm/widgets/selectBtn.dart';
import 'package:alarm/widgets/selectDate.dart';
import 'package:alarm/widgets/timeText.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'notification/NotificationHelper.dart';
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

  @override
  void initState() {
    super.initState();
    // Initialize notifications when the app starts
    Notificationhelper.init();
  }


  final PickTime time = PickTime();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              clock,
              TimeText(hourandMinute: hourandMinute, currentTime: currentTime),
              selectTimebtn(time: time),
              SizedBox(height: 7,),
              ElevatedButton(
                onPressed: (){
                  Notificationhelper.cancelNoti(0);
                },
                child: Text("Cancel Alarm"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
