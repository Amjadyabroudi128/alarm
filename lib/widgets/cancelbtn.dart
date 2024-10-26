import 'package:alarm/components/ElevatedButton.dart';
import 'package:alarm/consts.dart';
import 'package:alarm/widgets/selectDate.dart';
import 'package:flutter/material.dart';

import '../notification/NotificationHelper.dart';

class cancelBtn extends StatefulWidget {
  const cancelBtn({
    super.key,
  });

  @override
  State<cancelBtn> createState() => _cancelBtnState();
}

class _cancelBtnState extends State<cancelBtn> {
  final PickTime time = PickTime();
  @override
  Widget build(BuildContext context) {
    String cancel = "cancel Alarm";
    return myBtn(
      onPressed: (){
        time.showCancelDialog(context);
      },
      child: Text(cancel, style: btnStyle,),
    );
  }
}
