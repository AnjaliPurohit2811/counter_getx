import 'dart:ffi';

import 'package:counter_getx/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemePage extends StatelessWidget {
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Theme Change'),
      ),
      body: Center(
          child: OutlinedButton(
              onPressed: themeController.changeTheme,
              child: themeController.isDarkMode.value ? Icon(Icons.light_mode_outlined , ) : Icon(Icons.dark_mode_outlined))),
    );
  }
}
