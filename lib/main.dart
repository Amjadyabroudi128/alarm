import 'package:alarm/notification/NotificationHelper.dart';
import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'homePage.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Notificationhelper.init();
  tz.initializeTimeZones();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  MyHomePage(),
    );
  }
}

