import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../notification/NotificationHelper.dart';
class PickTime {
  Future<void> selectDate(BuildContext context) async {
    var currentTime = DateTime.now();
    TimeOfDay selectedTime = TimeOfDay.now();
    final hourandMinute = DateFormat("Hm");
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
}