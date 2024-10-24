import 'package:alarm/components/ElevatedButton.dart';
import 'package:alarm/consts.dart';
import 'package:flutter/material.dart';

import '../notification/NotificationHelper.dart';

class cancelBtn extends StatelessWidget {
  const cancelBtn({
    super.key,
  });

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
