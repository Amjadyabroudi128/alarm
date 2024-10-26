import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../notification/NotificationHelper.dart';
class PickTime {
  Future<void> selectDate(BuildContext context) async {
    TimeOfDay selectedTime = TimeOfDay.now();
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null) {
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
          "good day", // Title of the notification
          "it's time to Wake Up", // Body of the notification
          scheduledDate, // The time the notification should trigger
          true // Android allow while idle
      );
    }
  }
  Future<void> ShowDialog (BuildContext context ) async {
    final hourandMinute = DateFormat("Hm");
    var currentTime = DateTime.now();
    showDialog(context: context,
        builder: (context){
          return AlertDialog(
            title: Text("want to cancel this alarm"),
            content: Text(""),
            actions: [
              MaterialButton(
                onPressed: (){
                  Notificationhelper.cancelNoti(0);
                },
                child: Text(selectDate(context) != null ? "you have sat an alarm ${hourandMinute.format(currentTime)} do you want to cancel ": "no itme selected"),
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("cancel"),)
            ],
          );
        }
    );
  }
}