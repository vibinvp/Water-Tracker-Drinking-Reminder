// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:water_reminder/custum/inside_pages/History_screen.dart';
import 'package:water_reminder/custum/inside_pages/Home_screen.dart';
import 'package:water_reminder/custum/inside_pages/Settings_screen.dart';


class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              child: TabBar(tabs: [
                custum_appbar(Icons.water_drop, 'Home'),
                custum_appbar(Icons.history, 'History'),
                custum_appbar(Icons.settings, 'settings')
              ]),
              preferredSize: Size.fromHeight(18.0),
            )),
        body: TabBarView(
            children: [HomeScreen(), History_screen(), SettingScreen()]),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Row custum_appbar(IconData icon, String text) {
    return Row(
      children: [
        Tab(
          icon: Icon(icon),
        ),
        Text(text)
      ],
    );
  }
}
