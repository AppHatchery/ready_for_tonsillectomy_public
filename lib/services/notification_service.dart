import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:ready_for_tonsillectomy/services/navigation_service.dart';
import 'package:ready_for_tonsillectomy/utils/prefs.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tzData;

class NotificationService {
  static final NotificationService _notificationService =
      NotificationService._internal();

  //NotificationService a singleton object
  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();

  final _localNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    // #1
    const androidSetting = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSetting = DarwinInitializationSettings();

    // #2
    const initSettings =
        InitializationSettings(android: androidSetting, iOS: iosSetting);

    // #3
    await _localNotificationsPlugin.initialize(initSettings).then((_) {
      debugPrint('setupPlugin: setup success');
    }).catchError((Object error) {
      debugPrint('Error: $error');
    });

    if (PreferenceUtils.getTimestamp("DOS") != null) {
      var date = DateTime.fromMillisecondsSinceEpoch(
          PreferenceUtils.getTimestamp("DOS")!);
      var dayOfSurgery = tz.TZDateTime.local(
          date.year,
          date.month,
          date.day,
          date.hour,
          date.minute,
          date.second,
          date.millisecond,
          date.microsecond);
      const defaultImage = "asset://assets/transparent.png";

      //first notification
      var day1DateTime = dayOfSurgery
          .subtract(const Duration(days: 6))
          .add(const Duration(hours: 11));
      const day1Message =
          "Kids have less anxiety about surgery when they know what to expect. Talk to your child about surgery and what the day will be like. Go through the Ready for Surgery! app together.";
      await scheduleNotification(
          body: day1Message,
          scheduledDate: day1DateTime,
          imagePath: defaultImage);
    }
  }

  Future<void> scheduleNotification({
    required String body,
    required scheduledDate,
    required String imagePath,
  }) async {
    BigPictureStyleInformation bigPictureStyleInformation =
        BigPictureStyleInformation(FilePathAndroidBitmap(imagePath),
            largeIcon: FilePathAndroidBitmap(imagePath));

    await _localNotificationsPlugin.zonedSchedule(
        Random().nextInt(1000),
        "Ready for Surgery",
        body,
        scheduledDate,
        const NotificationDetails(
          android: AndroidNotificationDetails("channel", "Channel",
              importance: Importance.high, priority: Priority.high),
        ),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }

  //Cancel Notification one by one
  Future<void> cancelNotification() async {
    await _localNotificationsPlugin.cancel(0);
  }

  //Cancel All Notification
  Future<void> cancelAllNotifications() async {
    await _localNotificationsPlugin.cancelAll();
  }

  Future<void> selectNotification(String? payload) async {
    await Navigator.pushNamed(
        NavigationService.navigatorKey.currentContext!, '/hub');
  }
}
