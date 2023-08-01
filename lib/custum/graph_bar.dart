// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:water_reminder/custum/inside_pages/Home_page.dart';

// ignore: camel_case_types
class Graph_Bar extends StatelessWidget {
  const Graph_Bar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  maxRadius: 17,
                   backgroundImage: ExactAssetImage(
                          'lib/asset/22-223941_transparent-avatar-png-male-avatar-icon-transparent-png.png',
                        ),
                ),
                const SizedBox(width: 10,),
                const Text('personal hidration plan',style: TextStyle(fontSize: 17),),
              ],
            ),
            const SizedBox(height: 80,),
            Align(child: Lottie.asset("assets/graph-rising.json")),
            const Text("How to effectively monitor",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            const Text('check your hydration report and see your ratio'),
            const SizedBox(height: 50,),

             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Home_page() ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(
                    left: 90.0, right: 90, top: 12, bottom: 12),
                child: Text(
                  "START",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27),
              ))),
            )


          ],
        ),
      ),
    );
  }
}