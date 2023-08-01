// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:water_reminder/controller/controller.dart';


import 'package:water_reminder/custum/wakeup_screen.dart';
import 'package:water_reminder/custum/weight_screen.dart';
import 'package:water_reminder/custum/lottie_screen.dart';
class Onbody_screen extends StatefulWidget {
  const Onbody_screen({Key? key}) : super(key: key);

  @override
  State<Onbody_screen> createState() => _Onbody_screenState();
}

class _Onbody_screenState extends State<Onbody_screen> {
  final _controller = Get.put(Controller());
  final controller = PageController();
  bool islastpage = false;
  bool islastpage1 = false;
  bool genter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size(300, 200),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: GetBuilder<Controller>(builder: (controller) {
              return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 20,),
              Custm_AppBar(icon: Icons.male,value: controller.genter),
               Custm_AppBar(icon: Icons.monitor_weight_outlined,value: controller.weight),
               Custm_AppBar(icon: Icons.alarm,value: DateFormat('kk:mm').format(controller.wakeUp)),
               Custm_AppBar(icon: Icons.nights_stay,value: DateFormat('kk:mm').format(controller.bedtime)),
                SizedBox(width: 20,),
               
               
              ],
            );
            })
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          print(index);
          if (index == 2) {
            islastpage1 = true;
          }
          else {
            islastpage1 = false;
          }
          setState(() {
            islastpage = index == 3;
          });
          print(islastpage1);
          print(_controller.isNext1);
        },
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Your Gender',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 80,),
              SizedBox(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children:  [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                             _controller.genter = 'male';
                          if (genter) {
                             genter = false;
                          } else {
                            genter = true;
                          }
                         });
                        },
                        child: Column(
                          children: [
                            Opacity(
                         opacity: genter ? 0.5 : 1,
                              child: CircleAvatar(
                                backgroundImage: ExactAssetImage(
                                  'lib/asset/22-223941_transparent-avatar-png-male-avatar-icon-transparent-png.png',
                                ),
                                maxRadius: 70,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Male',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: genter? Colors.grey : Colors.blue),)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                     GestureDetector(
                       onTap: () {
                          setState(() {
                             _controller.genter = 'Femal';
                          if (genter) {
                             genter = false;
                          } else {
                            genter = true;
                          }
                         });
                       },
                       child: Column(
                          children: [
                            Opacity(
                              opacity: !genter ? 0.5 : 1,
                              child: CircleAvatar(
                                backgroundImage: ExactAssetImage(
                                  'lib/asset/img_avatar2.png',
                                ),
                                maxRadius: 70,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Female',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: !genter? Colors.grey : Colors.blue),)
                          ],
                        ),
                     ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your Weight',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 90,
              ),
              DecimalExample(),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Wake-up time',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 90,
              ),
              wake_upScreen(
                imageurl:
                    "lib/asset/young-man-with-sleeping-pose-avatar-character-vector-23536967.jpg",
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Bedtime',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 90,
              ),
              wake_upScreen(
                  imageurl:
                      "lib/asset/young-man-with-sleeping-pose-avatar-character-vector-23536955.jpg")
            ],
          )
        ],
      ),
      bottomSheet:
      
          // ? TextButton(
          //     onPressed: () {
              
          //     },
          //     child: Text('hello'))
           Padding(
              padding: const EdgeInsets.only(bottom: 50, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    
                    
                    child: GestureDetector(
                      onTap: () {
                        _controller.changeIsNest(islastpage1);
                        controller.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                      },
                      child: const CircleAvatar(
                        maxRadius: 30,
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
              
                  ElevatedButton(
                    onPressed: () {
                     
                      _controller.changeIsNest(islastpage1);
                      islastpage ?   Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => lottie_screen())) : controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease);
                   
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 15.0, right: 15, top: 15, bottom: 15),
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 19),
                      ),
                    ),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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

class Custm_AppBar extends StatelessWidget {
  final value ;

  IconData icon;

   Custm_AppBar({
     required this.value,
    Key? key,required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blue[500],borderRadius: BorderRadius.all(Radius.circular(12))),
            //padding: EdgeInsets.all(0),
            height: 40,
            width: 40,
            //color: Colors.blue,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => lottie_screen()));
              },
              icon: Icon(icon,size: 15,),
              iconSize: 30,
            ),
          ),
          Text(value.toString()) 
        ],
      ),
    );
  }
}
