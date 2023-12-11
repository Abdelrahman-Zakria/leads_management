import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leads_management/config.dart';
import 'package:leads_management/controllers/homeController.dart';
import 'package:leads_management/controllers/themeService.dart';

class MyHomePage extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leads Management',style: TextStyle(
          color: UiConfig.colorSec,

        ),),
        backgroundColor: Colors.grey[300],

        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.dehaze,
            color: UiConfig.colorSec,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16))),
      ),
      body: Center(
        child: Obx(() => controller.getWidgets()[controller.selectedIndex.value]),
      ),
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (homeController) {
          return CurvedNavigationBar( // Use CurvedNavigationBar
            // color: Colors.black,
            color: Colors.grey[300]!,
            index: homeController.selectedIndex.value,
            backgroundColor: Colors.transparent,
            items: <Widget>[
              homeController.selectedIndex.value == 0 ? Icon(Icons.dashboard, size: 30,color: homeController.selectedIndex.value == 0 ? UiConfig.colorSec : Colors.black,):Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.dashboard, size: 30,color: homeController.selectedIndex.value == 0 ? UiConfig.colorSec : Colors.black,),
                    Text("Dashboard",style: TextStyle(color: homeController.selectedIndex.value == 0 ? UiConfig.colorSec : Colors.black,),),
                  ],
                ),
              ),
              homeController.selectedIndex.value == 1 ?
              Icon(Icons.list, size: 30,color: homeController.selectedIndex.value == 1 ? UiConfig.colorSec : Colors.black,):
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Icon(Icons.list, size: 30,color: homeController.selectedIndex.value == 1 ? UiConfig.colorSec : Colors.black,),
                  Text("Leads",style: TextStyle(color: homeController.selectedIndex.value == 1 ? UiConfig.colorSec : Colors.black,),),
                ],),
              ),

              homeController.selectedIndex.value == 2?
              Icon(Icons.settings, size: 30,color: homeController.selectedIndex.value == 2 ? UiConfig.colorSec : Colors.black,):Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.settings, size: 30,color: homeController.selectedIndex.value == 2 ? UiConfig.colorSec : Colors.black,),
                    Text("Settings",style: TextStyle(color: homeController.selectedIndex.value == 2 ? UiConfig.colorSec : Colors.black,),),

                  ],
                ),
              ),
            ],
            onTap: (index) => homeController.changeSelectedIndex(index),
          );
        },
      ),    );
  }
}
