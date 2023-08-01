// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:water_reminder/Push_notification/Awsome_notification.dart';


import 'package:water_reminder/model/model.dart';
double _value = 0;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 // List<DateTime> date = [];
  final box = Hive.box<Detailsmodel>('details');
  List<Detailsmodel> details = [];

  getDetails() {
    details.clear();
    List< Detailsmodel> newVal = box.values.toList();
    details.addAll(newVal);

  }

  @override
  Widget build(BuildContext context) {
    
    getDetails();
    
    // Future<void> addDetails(double value)async {
    //   final detail =Details(),
    //    createdDate=DateTime.now();
    //    final box =Boxes.getDetails();
    //    setState(() {
    //      details.add(detail);
    //    });

    // }
   // print(newVal[0].createdDate);

    void increment() {
      
  
       _value += 10;
        if (_value == 110) {
          _value = 0;
          box.clear();
        }
      setState(() {
 

        final newDetail = Detailsmodel(createdDate: DateTime.now(), value: _value);
        box.add(newDetail);
        getDetails();


        
       
        print(details.last.value);
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView(
          children: [
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
                  width: 220,
                  height: 90,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        "Start drinking first cup of\n water",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 9,
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.lightbulb_sharp,
                      size: 30,
                      color: Colors.yellow,
                    ),
                    const Text(
                      "More tips",
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
            Stack(
              
              children: [
                 
                SfRadialGauge(axes: <RadialAxis>[
                  RadialAxis(
                    showLabels: false,
                    showTicks: false,
                    startAngle: 180,
                    endAngle: 0,
                    radiusFactor: 0.9,
                    centerX: 0.5,
                    centerY: 0.6,
                    // canScaleToFit: true,
                    axisLineStyle: const AxisLineStyle(
                      thickness: 0.04,
                      color: Color.fromARGB(30, 0, 169, 181),
                      thicknessUnit: GaugeSizeUnit.factor,
                      cornerStyle: CornerStyle.startCurve,
                    ),
                    pointers: <GaugePointer>[
                      RangePointer(
                          value: (details.isEmpty)? 0: details.last.value,
                          width: 0.04,
                          sizeUnit: GaugeSizeUnit.factor,
                          cornerStyle: CornerStyle.bothCurve)
                    ],
                  )
                ]),
                Positioned(
                  left: 53,
                  bottom: 0,
                  top: 80,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFeaf4fc),
                    maxRadius: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        
                        const Text.rich(
                          
                          TextSpan(
                              text:"200",
                              style: const TextStyle(
                                  color: Colors.lightBlueAccent, fontSize: 31),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '/2210ml',
                                  style: TextStyle(color: Colors.black),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Text(
                          "Daily Drink target",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        //SizedBox(height: 30,),

                        Container(
                          height: 50,
                          width: 30,
                          child: IconButton(
                              icon: Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  increment();
                                  create_notify();
                                });
                              }),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/paper-coffee-cup-removebg-preview_preview_rev_1.jpeg",
                                  ),
                                  fit: BoxFit.cover)),
                        ),

                        Text(
                          " ${_value * 10}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 110,
                  //  right: 190,
                  left: 22,
                  child: Icon(
                    Icons.volunteer_activism,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  bottom: 110,
                  //  right: 190,
                  right: 22,
                  child: Icon(
                    Icons.water_drop,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            Icon(
              Icons.arrow_upward_rounded,
              color: Colors.blue,
            ),
            Text(
              "Confirm that youhave just drunk water ",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Todays record",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.add)
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                    color: Color(0xFFeaf4fc),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        
                        final date = details[index];
                        return 
                            
                            // final value = date[index];
                            ListTile(
                              onTap: () {
                       
                              },
                                title: Text(DateFormat('h:mm a')
                                    .format(date.createdDate)),
                                leading: Image.asset(
                                  'assets/paper-coffee-cup-removebg-preview_preview_rev_1.jpeg',
                                  width: 35,
                                ),
                                trailing: Text('200'),
                              );
                           
                      },
                      itemCount: details.length
                   )))
          ],
        ),
      ),
    );
  }
}
