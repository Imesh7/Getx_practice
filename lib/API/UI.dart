import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractise/API/ui_controllers.dart';

class UiPage extends StatelessWidget {
  UiPage({Key? key}) : super(key: key);

  final controller = Get.put(UiController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: GetBuilder<UiController>(
                  init: UiController(),
                  builder: (_) {
                    if (_.isLoading.isTrue) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return ListView.builder(
                        itemCount: _.uiData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Card(
                              child: Container(
                                  child: Text(
                                _.uiData[index].title!,
                              )),
                            ),
                          );
                        });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
