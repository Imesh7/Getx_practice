import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getxpractise/homepage_controller.dart';

class HomeBindings extends Bindings {
  
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeController());
  }
}
