import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/all_leads_screen.dart';
import '../view/dashboard.dart';
import '../view/settings_screen.dart';

class HomeController extends GetxController {
  var _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(int index) => _selectedIndex.value = index;

  List<Widget> getWidgets() {
    return [
      DashboardScreen(),
      AllLeadsScreen(),
      SettingsScreen(),
    ];
  }
}