import 'package:get/state_manager.dart';
import 'package:getxpractise/API/model.dart';
import 'package:getxpractise/API/services.dart';

class UiController extends GetxController {
  var uiData = <DataModel>[];
  var isLoading = true.obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    try {
      isLoading(true);
      uiData = await UiServices().callServices();
      isLoading(false);
      update();
    } catch (e) {
      print(e.toString());
    }
  }
}
