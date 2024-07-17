import 'package:counter_getx/controller/theme_controller.dart';
import 'package:counter_getx/view/counter_page.dart';
import 'package:counter_getx/view/theme_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeController.isDarkMode.value ? ThemeData.dark() : ThemeData.light(),
        home: CounterPage(),
        getPages: [
          GetPage(name: '/count', page: () => CounterPage(),),
          GetPage(name: '/theme', page: () => ThemePage(),)
        ],
      );
    },);
  }
}



