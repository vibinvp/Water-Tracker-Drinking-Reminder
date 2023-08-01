import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:water_reminder/custum/inside_pages/custum/testing.dart';
import 'package:water_reminder/custum/page_transiton.dart';

class lottie_screen extends StatefulWidget {
  const lottie_screen({ Key? key }) : super(key: key);

  @override
  State<lottie_screen> createState() => _lottie_screenState();
}

class _lottie_screenState extends State<lottie_screen> {
  @override
  void initState() {
    topageTrasitionScreen();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
body: Container(
width: double.infinity,
height: double.infinity,
  child: Stack(
  
    children: [
      Positioned(
        left: 100,
        bottom: 450,

        child: CircleAvatar(
          backgroundImage: AssetImage("lib/asset/22-223941_transparent-avatar-png-male-avatar-icon-transparent-png.png"),
          maxRadius: 80,
        ),
      ),
      Positioned(
        right: 0,
        top: 450,
        left: 35,
        child: LinearPercentIndicator(
          barRadius:Radius.circular(10),
        width: 300,
        lineHeight: 19,
        percent: 100/100,
        animation: true,
        animationDuration: 600,
        progressColor: Colors.blue,
       // curve: Curves.easeInBack,
        // ignore: deprecated_member_use
        linearStrokeCap: LinearStrokeCap.round,
        
        ),
      ),

    // positioned(top: 100, bottom:159.0),
     positioned(top: 290, bottom: 30),
    positioned(top: 370, bottom: 5),
    positioned(top: 500, bottom: 0)
    ],
  ),
),
    );
  }
Future<void> topageTrasitionScreen() async {             
    await Future.delayed(
      // ignore: prefer_const_constructors
      Duration(milliseconds: 600),
      () {
         Navigator.pushReplacement(
                      context,
                      CustomPageRoute(
                        child: Page_transition() ,
                        direction: AxisDirection.right
                      ),
                    );
        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (context) {
        //       return Graph_Bar();
        //     },
        //   ),
        // );
      },
    );
  }



}

class positioned extends StatelessWidget {
  double top;
  

  double bottom;

 positioned({
    Key? key,required this.top ,required this.bottom
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      left: 0,
      right: 0,
      top: top,
      child: Lottie.asset("assets/28810-sea-waves.json"));
  }
}
