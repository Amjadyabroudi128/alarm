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

  Future<void> _selectDate() async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null) {
      setState(() {
        selectedTime = timeOfDay;
      });

      final now = DateTime.now();
      final DateTime scheduledDate = DateTime(
        now.year,
        now.month,
        now.day,
        timeOfDay.hour,
        timeOfDay.minute,
      );
      // Schedule the notification
      await Notificationhelper.scheduledNoti(
          "good day",  // Title of the notification
          "it's time to Wake Up",  // Body of the notification
          scheduledDate,  // The time the notification should trigger
          true  // Android allow while idle
      );
    }
  }

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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: btnClr,
                  minimumSize: btnSize,
                ),
                onPressed: _selectDate,
                child: Text("Select Time", style: btnStyle,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
