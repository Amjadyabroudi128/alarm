import 'package:alarm/components/ElevatedButton.dart';
import 'package:alarm/widgets/selectDate.dart';
import 'package:flutter/material.dart';

import '../consts.dart';

class selectTimebtn extends StatelessWidget {
  const selectTimebtn({
    super.key,
    required this.time,
  });

  final PickTime time;

  @override
  Widget build(BuildContext context) {
    return myBtn(
      onPressed: () {
        time.selectDate(context);
      },
      child: Text("Select Time", style: btnStyle,),
    );
  }
}
