// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:water_reminder/custum/inside_pages/custum/custum_insideScreen.dart';
import 'package:water_reminder/custum/inside_pages/custum/graph_chart.dart';

class History_screen extends StatefulWidget {
  const History_screen({Key? key}) : super(key: key);

  @override
  State<History_screen> createState() => _History_screenState();
}

class _History_screenState extends State<History_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: Colors.grey,
                size: 18,
              ),
              Text("May  2022"),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 18,
              ),
            ],
          ),
        ),
        Testing_widget(),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 180,
          width: double.infinity,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Weekly comletion",
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Custum_days_colum(
                      day: 'Sun',
                      img: "assets/paper-coffee-cup-removebg-preview.jpg",
                    ),
                    Custum_days_colum(
                      day: 'Mon',
                      img: "",
                    ),
                    Custum_days_colum(
                      day: 'Tue',
                      img: "",
                    ),
                    Custum_days_colum(
                      day: 'Wed',
                      img: "",
                    ),
                    Custum_days_colum(
                      day: 'Thu',
                      img: "",
                    ),
                    Custum_days_colum(
                      day: 'Fri',
                      img: "",
                    ),
                    Custum_days_colum(
                      day: 'Sat',
                      img: "",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
       // SizedBox(height: 29,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Drink water report",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        Custum_dri_Report(
          clr: Colors.green,
          deatails: '0ml/day',
          Heading: 'Weekly avarage',
        ),
        Divider(
          color: Colors.grey,
          thickness: 0.5,
          endIndent: 21,
          indent: 21,
        ),
        Custum_dri_Report(
          clr: Colors.blue,
          deatails: '0ml/day',
          Heading: 'Monthly avarage',
        ),
        Custum_dri_Report(
          clr: Colors.yellow,
          deatails: '0%',
          Heading: 'Avarage comletion',
        ),
        Custum_dri_Report(
          clr: Colors.red,
          deatails: '0times/day',
          Heading: 'Drinking frequency',
        ),
         Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  //color: Colors.white,
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    "assets/rain drop.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 270,
                  height: 90,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                        child: Text(
                      "A healthy mind and body is a hydrate one .come and have a try!",
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                const SizedBox(
                  width: 9,
                ),
              
              ],
            ),
            SizedBox(height: 30,)
      ],
    ));
  }
}
