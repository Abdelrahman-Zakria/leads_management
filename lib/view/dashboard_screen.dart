// lib/view/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leads_management/config.dart';
import 'package:leads_management/controllers/themeService.dart';
import '../controllers/dashboardController.dart';
import '../reuseableWidgets/custom_list_tile_leaderboard.dart';
import '../reuseableWidgets/custom_progress_bar.dart';

class DashboardScreen extends StatelessWidget {
  final DashboardController dashboardController =
      Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome Zoz',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: ThemeService().isSavedDarkMode()?Colors.white:Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Let's see your analytics",
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 34),
            Text(
              "Your Analytics,",
              style: TextStyle(fontSize: 24,color: ThemeService().isSavedDarkMode()?Colors.white:Colors.black,),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
              ),
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCircularProgressBar(
                        progress: 0.45,
                        progressText: '45%',
                        belowText: 'Lost Leads',
                        progressColor: UiConfig.colorSec,
                      ),
                      CustomCircularProgressBar(
                        progress: 0.7,
                        progressText: '70%',
                        belowText: 'Target',
                        progressColor: Colors.greenAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Your Standings,",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                itemCount: dashboardController.leaderboardsData.length,
                itemBuilder: (context, index) {
                  var leaderboardItem =
                  dashboardController.leaderboardsData[index];
                  return CustomListTileLeaderBoard(
                    startIcon: leaderboardItem['startIcon']?? Icons.help,
                    genderIcon: leaderboardItem['genderIcon']?? Icons.help,
                    name: leaderboardItem['name'],
                    points: leaderboardItem['score'].toString(),
                    endIcon: leaderboardItem['endIcon']?? Icons.help, startIconColor: leaderboardItem['startIconColor'], genderIconColor: leaderboardItem['genderIconColor'], endIconColor: leaderboardItem['endIconColor'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
