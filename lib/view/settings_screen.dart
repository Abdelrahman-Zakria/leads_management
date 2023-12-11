// lib/views/settings_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leads_management/config.dart';

import '../controllers/settingsController.dart';

class SettingsPage extends StatelessWidget {
  final SettingsController settingsController = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Icon(Icons.account_circle, size: 50,color: UiConfig.colorSec,),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Zeyad Tamer', style: TextStyle(fontSize: 20)),
                      Text('zeyadtamer@gmail.com', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Enable Notifications'),
                    trailing: Obx(() => Switch(
                      value: settingsController.notificationsEnabled.value,
                      onChanged: (value) =>
                          settingsController.toggleNotifications(),
                    )),
                  ),
                  ListTile(
                    leading: Icon(Icons.dark_mode),
                    title: Text('Enable Dark Mode'),
                    trailing: Obx(() => Switch(
                      activeColor: UiConfig.colorSec,
                      value: settingsController.darkModeEnabled.value,
                      onChanged: (value) =>
                          settingsController.toggleDarkMode(),
                    )),
                  ),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Language Mode'),
                  ),
                  ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit Profile'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
