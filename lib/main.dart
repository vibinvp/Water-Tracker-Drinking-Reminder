


import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:water_reminder/custum/first_screen.dart';

import 'package:water_reminder/model/model.dart';

Future main() async {

 WidgetsFlutterBinding.ensureInitialized();
 await Hive.initFlutter();
  Hive.registerAdapter(DetailsmodelAdapter());
  Hive.openBox<Detailsmodel>('details');
 //await Hive.openBox<>();

  AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelDescription: "Notification example",
      channelKey: 'basic_channel',
      channelName: 'basic_notifications',
      defaultColor: Colors.blue,
      playSound: true,
      enableLights: true,
      enableVibration: true,
      importance: NotificationImportance.High,
      channelShowBadge: true

    )
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: const Color(0xFFEFEFEF),
        //  backgroundColor: Colors.white,

        primarySwatch: Colors.blue,
      ),
      home: First_screen(),
    );
  }
}
