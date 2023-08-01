import 'package:get/get.dart';
import 'package:get/get_utils/src/platform/platform_io.dart';

class Controller extends GetxController {
  String genter = 'male';
  int weight = 0;
  DateTime wakeUp = DateTime.now() ;
  DateTime bedtime = DateTime.now();
  bool isNext1 = false;

  changeGenter(String value) {
    genter = value;
    update();
  }
   changeWieght(int value) {
    weight = value;
    update();
    
  }
  changeIsNest(bool value) {
    print('.....................$value');
    isNext1 = value;
    update();
  }
 changeWakeUp(DateTime value) {
    wakeUp = value;
    update();
  }
  changeBedTime(DateTime value) {
    bedtime = value;
    update();
  }
}