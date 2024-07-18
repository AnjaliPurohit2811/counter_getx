import 'package:counter_getx/view/theme_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Counter'),
        actions: [
          InkWell(
              onTap: () {
                Get.to(ThemePage(), transition: Transition.circularReveal);
              },
              child: Icon(
                Icons.navigate_next,
                size: 30,
              ))
        ],
      ),
      body: Center(
        child: Obx(() => Text(
              'Count : ${counterController.Count}',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
