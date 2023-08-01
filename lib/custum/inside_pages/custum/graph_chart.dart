import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:toggle_switch/toggle_switch.dart';
class Testing_widget extends StatefulWidget {
  const Testing_widget({ Key? key }) : super(key: key);

  @override
  State<Testing_widget> createState() => _Testing_widgetState();
}

class _Testing_widgetState extends State<Testing_widget> {
 @override
Widget build(BuildContext context) {
  return Column(
     children: [
        Container(
        height: 250,
        child: SfCartesianChart(
       
          enableAxisAnimation: true,
        //  onChartTouchInteractionDown: ,
        // Initialize category axis
          primaryXAxis: CategoryAxis(),

          series: <LineSeries<SalesData, String>>[
            LineSeries<SalesData, String>(
              // Bind data source
              dataSource:  <SalesData>[
                SalesData('Jan', 25),
                SalesData('Feb', 28),
                SalesData('Mar', 34),
                SalesData('Apr', 32),
                SalesData('May', 40)
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales
            )
          ]
        )
      ),
      SizedBox(height: 10,),
      ToggleSwitch(
        borderColor: [Color.fromARGB(255, 117, 185, 240)],
                    inactiveBgColor: Colors.white,
                    activeBgColor: [Color.fromARGB(255, 68, 162, 238)],
                    minHeight: 22,
                    minWidth: 80,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: [ 'Month','Year'],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
     ],
      
  );
}


}
class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}