

import 'package:awesome_notifications/awesome_notifications.dart';

Future<void>create_notify() async {
  String timezon = await AwesomeNotifications().getLocalTimeZoneIdentifier();
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 0,
      channelKey: 'basic_channel',
      title: "Drink water",
      body: "YOUR TIME TO DRINK WATER",
      bigPicture: 'asset://assets/paper-coffee-cup-removebg-preview.jpg',
      notificationLayout:NotificationLayout.BigPicture
    ),
schedule: NotificationInterval(interval: 5,timeZone: timezon,repeats: false)
  );
}

