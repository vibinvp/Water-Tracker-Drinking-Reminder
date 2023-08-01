import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:water_reminder/controller/controller.dart';

class wake_upScreen extends StatefulWidget {
  var imageurl;

   wake_upScreen({Key? key,required this.imageurl}) : super(key: key);

  @override
  State<wake_upScreen> createState() => wake_upScreenState();
}

class wake_upScreenState extends State<wake_upScreen> {
  final Controller _controller = Get.find();
  DateTime _dateTime =DateTime.now();
  @override
  Widget build(BuildContext context) {
     return  Row(
       children: [
         Padding(
          padding: const EdgeInsets.all(19.0),
          child: Container(
            height: 350,
            width: 150,
            // color: Colors.red,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    widget.imageurl,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),

         Align(
           child: SizedBox(
               height: 180,
               width: 150,
               child: CupertinoDatePicker(
                 
                 initialDateTime: _dateTime,
                 mode: CupertinoDatePickerMode.time,
                 use24hFormat: true,
                   onDateTimeChanged: 
                   (dateTime) {
                   if (_controller.isNext1) {
                      _controller.changeBedTime(dateTime);
                   } else {
                     _controller.changeWakeUp(dateTime);
                   }
                   },
                       ),
             ),
    
    
         ),
       ],
     );
    // return Row(
    //   children: [
    //     // Padding(
    //     //   padding: const EdgeInsets.all(8.0),
    //     //   child: Container(
    //     //     height: 300,
    //     //     width: 150,
    //     //     // color: Colors.red,
    //     //     decoration: const BoxDecoration(
    //     //       image: DecorationImage(
    //     //           image: AssetImage(
    //     //             'lib/asset/avatar-man-weight-lifting-vector-16850451.webp',
    //     //           ),
    //     //           fit: BoxFit.cover),
    //     //     ),
    //     //   ),
    //     // ),

    //     SizedBox(
    //       height: 10,
    //       child: CupertinoDatePicker(
    //         initialDateTime: dateTime,
    //         mode: CupertinoDatePickerMode.time,
    //         use24hFormat: true,
    //           onDateTimeChanged: (datetime) => setState(() {
    //                 this.dateTime = dateTime;
    //               })),
    //     ),
    //   ],
    // );
    
  }
}
