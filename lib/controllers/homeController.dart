import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leads_management/view/dashboard_screen.dart';

import '../view/all_leads_screen.dart';
import '../view/settings_screen.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  set _selectedIndex(int index) => selectedIndex.value = index;

  changeSelectedIndex(int index) {
    selectedIndex.value = index;
    update();
    notifyChildrens();
  }

  List<Widget> getWidgets() {
    return [
      DashboardScreen(),
      AllLeadsScreen(),
      SettingsPage(),
    ];
  }
}
