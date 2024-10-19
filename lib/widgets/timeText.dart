import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../consts.dart';

class TimeText extends StatelessWidget {
  const TimeText({
    super.key,
    required this.hourandMinute,
    required this.currentTime,
  });

  final DateFormat hourandMinute;
  final DateTime currentTime;

  @override
  Widget build(BuildContext context) {
    return Text("${hourandMinute.format(currentTime)}",
      style: timeStyle,);
  }
}