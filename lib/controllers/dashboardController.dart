// lib/controllers/dashboardController.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/leads.dart';

class DashboardController extends GetxController {
  var analyticsData = {}.obs;
  var leaderboardsData = [].obs;
  var leadsList = <Lead>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchAnalyticsData();
    fetchLeaderboardsData();
  }

  void fetchAnalyticsData() {
    analyticsData.value = {
      'Sales': 150,
      'Leads': 300,
    };
    update();
  }

  void fetchLeaderboardsData() {
    leaderboardsData.value = [
      {
        'startIcon': Icons.looks_one_outlined,
        'startIconColor': Colors.yellow,
        'genderIcon': Icons.female,
        'genderIconColor': Colors.pinkAccent,
        'name': 'Sara Ahmed',
        'score': 8540,
        'endIcon': Icons.keyboard_arrow_up_outlined,
        'endIconColor': Colors.green,

      },
      {
        'startIcon': Icons.looks_two_outlined,
        'startIconColor': Colors.amber,
        'genderIcon': Icons.male,
        'genderIconColor': Colors.blue,
        'name': 'Zeyad tamer (ME)',
        'score': 7430,
        'endIcon': Icons.keyboard_arrow_down_outlined,
        'endIconColor': Colors.red,
      },
      {
        'startIcon': Icons.looks_3_outlined,
        'startIconColor': Colors.deepOrange,
        'genderIcon': Icons.male,
        'genderIconColor': Colors.blue,
        'name': 'Wael Gomaa',
        'score': 6840,
        'endIcon': Icons.keyboard_arrow_up_outlined,
        'endIconColor': Colors.green,

      },
    ];
    update();
  }

}
