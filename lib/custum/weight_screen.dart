


import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';

import 'package:water_reminder/controller/controller.dart';

class DecimalExample extends StatefulWidget {
  @override
  DecimalExampleState createState() => DecimalExampleState();
}

class DecimalExampleState extends State<DecimalExample> {
  double currentDoubleValue = 0;
  double DoubleValue = 0;
  int _currentValue = 0;

  final Controller _controller = Get.find();


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            width: 150,
            // color: Colors.red,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/Fig-3-Standing-weghing-scales-550x1024.jpg',),fit: BoxFit.cover),
            
            ),
            
          ),
        ),
        const SizedBox(height: 16),
        // DecimalNumberPicker(
        //   value: currentDoubleValue,
        //   minValue: 1,
        //   maxValue: 400,
        //   decimalPlaces:0,
        //   onChanged: (value) => setState(() => currentDoubleValue = value),
        // ),
        // const SizedBox(height: 32),
          Row(
            children: [
              NumberPicker(
              value: _controller.weight,
              minValue: 0,
              maxValue: 100,
              onChanged: (value) {
                _controller.changeWieght(value);
              },
        ),
       
        
            ],
          ),
      ],
    );
  }
  showPickerArray(BuildContext context) {
    Picker(
        adapter: PickerDataAdapter<String>(
          pickerdata: [Text('Am'),Text("Pm")],
          isArray: true,
        ),
        hideHeader: true,
        selecteds: [3, 0, 2],
        title: Text("Please Select"),
        selectedTextStyle: TextStyle(color: Colors.blue),
        cancel: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.child_care)),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        }).showDialog(context);
  }
}
