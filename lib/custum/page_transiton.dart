import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:water_reminder/custum/graph_bar.dart';

import 'package:water_reminder/custum/inside_pages/custum/testing.dart';

class Page_transition extends StatefulWidget {
  const Page_transition({ Key? key }) : super(key: key);

  @override
  State<Page_transition> createState() => _Page_transitionState();
}

class _Page_transitionState extends State<Page_transition> {
  void initState() {
    toHomeScreen();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Container(
          color: Colors.blue,
          height: double.infinity,
          width: double.infinity,
          child:Lottie.asset("assets/78293-water-fills-square-progress-bar.json",fit: BoxFit.cover) ,
        ),
      ],
    );
  }

Future<void> toHomeScreen() async {             
    await Future.delayed(
      // ignore: prefer_const_constructors
      Duration(milliseconds: 2760),
      () {
         Navigator.pushReplacement(
                      context,
                      CustomPageRoute(
                        child: Graph_Bar() ,
                        direction: AxisDirection.down
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