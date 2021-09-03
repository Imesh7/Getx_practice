import 'package:get/get.dart';

class HomeController extends GetxController {
  var obxValue = 5.obs;
  var getxValue = "Updating".obs;

  var getBuilderValue = [0];
 
  //In this use case you no need to call
  // the obs to update the value the inner item already have it
  /* int get getBuildListSum {
    int total = 0;
    for (var value in getBuilderValue) {
      total += value;
    }
    print("total = $getBuilderValue");
    return total;
  } */

  void updateObxValue() {
    obxValue++;

    // print(data);
  }

  void updateGetxValue(int index) {
    getxValue.value = "$getxValue ${index.toString()}";
    // print(getxdata);
  }

  void updateGetBuilderValue(int index) {
    getBuilderValue.add(index);
    update();
  }

  
}
