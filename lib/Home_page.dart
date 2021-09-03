import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractise/API/UI.dart';
import 'package:getxpractise/homepage_controller.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

 // HomeController controller = Get.put(HomeController());
  //CONTROLLER



  //getx controller Bindings
  final controller = Get.find<HomeController>();

  int builderIndex = 0;
  int stringIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(() => UiPage());
                },
                icon: Icon(Icons.ac_unit_sharp))
          ],
        ),
        body: Column(
          children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    //OBX EXAMPLE
                    return Obx(() {
                      return Card(
                        child: Container(
                          color: Colors.red.shade700,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              controller.obxValue.string,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      );
                    });
                  })),

           Expanded(
            child: Container(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      //GETX EXAPMLE
                      return GetX<HomeController>(
                        builder: (_) {
                        return Card(
                          child: Container(
                            color: Colors.greenAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _.getxValue.string,
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        );
                      });
                    })),
          ),
           Expanded(
            child: Container(
              child: GetBuilder<HomeController>(
                builder: (_) {
               // print(_.getBuildListSum);
                return ListView.builder(
                    itemCount: _.getBuilderValue.length,
                    itemBuilder: (context, index) {
                      //GET BUILDER EXAMPLE
                      return Card(
                        child: Container(
                          color: Colors.yellow.shade900,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _.getBuilderValue[index].toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      );
                    });
              }),
            ),
          )
          
        ]),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              child: Text("red"),
              onPressed: () {
                controller.updateObxValue();
              },
            ),
             FloatingActionButton(
              child: Text("green"),
              onPressed: () {
                stringIndex++;
                controller.updateGetxValue(stringIndex);
              },),
             FloatingActionButton(
              child: Text("orange"),
              onPressed: () {
                builderIndex++;
                controller.updateGetBuilderValue(builderIndex);
              },
            ),
          
          ],
        ),
      ),
    );
  }
}
