import 'package:flutter/material.dart';

import '../notification/NotificationHelper.dart';

class cancelBtn extends StatelessWidget {
  const cancelBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Notificationhelper.cancelNoti(0);
      },
      child: Text("Cancel Alarm"),
    );
  }
}
