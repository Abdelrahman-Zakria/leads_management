import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leads_management/config.dart';
import 'package:leads_management/controllers/homeController.dart';

class MyHomePage extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leads Management'),
        backgroundColor: UiConfig.colorSec,
        centerTitle: true,
        leading: SizedBox.shrink(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16))),
      ),
      body: Center(
        child: Obx(() => controller.getWidgets()[controller.selectedIndex.value]),
      ),
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (homeController) {
          return BottomNavigationBar(
            selectedItemColor: UiConfig.colorSec,
            selectedLabelStyle: TextStyle(color: UiConfig.colorSec,),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard,
                    color: homeController.selectedIndex == 0
                        ? UiConfig.colorSec
                        : Colors.black),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list,
                    color: homeController.selectedIndex == 1
                        ? UiConfig.colorSec
                        : Colors.black),
                label: 'All Leads',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings,
                    color: homeController.selectedIndex == 2
                        ? UiConfig.colorSec
                        : Colors.black),
                label: 'Settings',
              ),
            ],
            currentIndex: homeController.selectedIndex.value,
            onTap: (index) => homeController.changeSelectedIndex(index),
          );
        },
      ),
    );
  }
}
