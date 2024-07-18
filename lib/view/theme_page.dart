import 'dart:ffi';

import 'package:counter_getx/controller/theme_controller.dart';
import 'package:counter_getx/view/counter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemePage extends StatelessWidget {
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('GetX Theme Change'),
        ),
        body: GetBuilder<ThemeController>(
          builder: (GetxController controller) {
            return Center(
              child: OutlinedButton(
                  onPressed: themeController.changeTheme,
                  child: Icon(
                    (themeController.isDarkMode.value)
                        ? Icons.dark_mode_outlined
                        : Icons.light_mode_outlined,
                  )),
            );
          },
        )
        // GetBuilder<ThemeController>(builder: (context) {
        //   return ;
        // }),
        );
  }
}
