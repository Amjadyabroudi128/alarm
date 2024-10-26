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
          "Good Day", // Title of the notification
          "It's time to Wake Up", // Body of the notification
          scheduledDate, // The time the notification should trigger
          true // Android allow while idle
      );
    }
  }

  Future<void> showCancelDialog(BuildContext context) async {
    final hourAndMinute = DateFormat("Hm");
    var currentTime = DateTime.now();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Want to cancel this alarm?"),
          content: Text(""),
          actions: [
            MaterialButton(
              onPressed: () {
                Notificationhelper.cancelNoti(0);
                Navigator.pop(context); // Dismiss the dialog after cancelling
              },
              child: Text(currentTime != null
                  ? "You have set an alarm for ${hourAndMinute.format(currentTime)}, do you want to cancel?"
                  : "No time selected"
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }
}
