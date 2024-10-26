import 'package:alarm/components/ElevatedButton.dart';
import 'package:alarm/consts.dart';
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
  @override
  Widget build(BuildContext context) {
    String cancel = "cancel Alarm";
    return myBtn(
      onPressed: (){
        Notificationhelper.cancelNoti(0);
      },
      child: Text(cancel, style: btnStyle,),
    );
  }
}
