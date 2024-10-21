

 import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
class Notificationhelper{
 static final FlutterLocalNotificationsPlugin myNotification = FlutterLocalNotificationsPlugin();

 static Future<void> init() async {

  const AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings("@mipmap/ic_launcher");

  const InitializationSettings initializationSettings = InitializationSettings(
   android: androidInitializationSettings
  );
  await myNotification.initialize(
      initializationSettings,
   onDidReceiveBackgroundNotificationResponse: onDidReceiveNotification,
   onDidReceiveNotificationResponse:onDidReceiveNotification
  );
  await myNotification.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
 }
 static Future<void> scheduledNoti(String title, String body, DateTime scheduledDate, bool androidAllowWhileIdle) async {
  const NotificationDetails platform = NotificationDetails(
   android: AndroidNotificationDetails(
    "channelId", "channelName",
    importance: Importance.high,
    priority: Priority.high,
    playSound: true,
   ),
   iOS: DarwinNotificationDetails(),
  );
  await myNotification.zonedSchedule(
   0, title, body,
   tz.TZDateTime.from(scheduledDate, tz.local),
   platform,
   androidAllowWhileIdle: androidAllowWhileIdle,
   uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
   matchDateTimeComponents: DateTimeComponents.time,
  );
 }
 static Future<void> onDidReceiveNotification(NotificationResponse notificationResponse) async {

 }
 static Future cancelNoti(int id) async  {
  await myNotification.cancel(id);
 }
}