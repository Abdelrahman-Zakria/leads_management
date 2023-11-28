import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leads_management/controllers/homeController.dart';

class MyHomePage extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lead Management App'),
      ),
      body: Center(
        child: Obx(() => controller.getWidgets()[controller.selectedIndex.value]),
      ),
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (homeController) {
          return BottomNavigationBar(
            selectedItemColor: Colors.red,
            selectedLabelStyle: TextStyle(color: Colors.red),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard,
                    color: homeController.selectedIndex == 0
                        ? Colors.red
                        : Colors.black),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list,
                    color: homeController.selectedIndex == 1
                        ? Colors.red
                        : Colors.black),
                label: 'All Leads',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings,
                    color: homeController.selectedIndex == 2
                        ? Colors.red
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
