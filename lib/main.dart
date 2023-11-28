import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leads_management/controllers/homeController.dart';
import 'package:leads_management/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return MaterialApp(
      title: 'Lead Management App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
