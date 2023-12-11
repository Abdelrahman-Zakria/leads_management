// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../config.dart';

class ThemeService{
 final lightTheme = ThemeData.light().copyWith(

     primaryColor:  UiConfig.colorSec,
   scaffoldBackgroundColor: Color(0xfff7f6fb),
   appBarTheme: AppBarTheme(
     titleSpacing: 20.0,
     systemOverlayStyle: SystemUiOverlayStyle(
       statusBarColor: Colors.white,
       statusBarIconBrightness: Brightness.light,
     ),
     backgroundColor: UiConfig.colorSec,
     elevation: 0.3,
     titleTextStyle: TextStyle(
       color: Colors.white,
       fontSize: 20.0,
       fontWeight: FontWeight.bold,
     ),
     iconTheme: IconThemeData(
       color: Colors.white,
     ),
   ),
   drawerTheme: DrawerThemeData(
     backgroundColor: Color(0xfff7f6fb),
   ),
   floatingActionButtonTheme:
   FloatingActionButtonThemeData(
       backgroundColor: UiConfig.colorSec,
   ),
   cardColor: Color(0xfff7f6fb),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     type: BottomNavigationBarType.fixed,
     selectedItemColor: UiConfig.colorSec,
     unselectedItemColor: Colors.grey,
     elevation: 20.0,
     backgroundColor: Colors.white,
   ),
   iconTheme: IconThemeData(color: UiConfig.colorSec, size: 25),
   // textTheme: TextTheme(
   //     bodyText1: TextStyle(
   //       fontSize: 25.0,
   //       fontWeight: FontWeight.w600,
   //       color: Colors.black,
   //     ),
   //     bodyText2:TextStyle(
   //       fontSize: 18.0,
   //       fontWeight: FontWeight.w600,
   //       color: Colors.black,
   //     ) ,
   //     subtitle1: TextStyle(
   //       fontSize: 22.0,
   //       fontWeight: FontWeight.w600,
   //       color: Colors.black,
   //     ),
   //   subtitle2: TextStyle(
   //       fontSize: 20.0,
   //       fontWeight: FontWeight.w600,
   //       color: Colors.black,
   //     ),
   //   caption: TextStyle(
   //     fontSize: 20.0,
   //     color: Colors.blue
   //   ),
   //   button: TextStyle(
   //     fontSize: 18,
   //     fontWeight: FontWeight.bold,
   //     color: Colors.black38,
   //   ),
   // ),

 );

 final darkTheme = ThemeData.light().copyWith(
     primaryColor: Colors.white,
     scaffoldBackgroundColor:Colors.grey[800],
     appBarTheme: AppBarTheme(
       titleSpacing: 20.0,
       systemOverlayStyle: SystemUiOverlayStyle(
         statusBarColor: UiConfig.dark,
         statusBarIconBrightness: Brightness.light,
       ),
       backgroundColor: UiConfig.dark,
       elevation: 0.0,
       titleTextStyle: TextStyle(
         color: Colors.white,
         fontSize: 20.0,
         fontWeight: FontWeight.bold,
       ),
       iconTheme: IconThemeData(
         color: Colors.white,
       ),
     ),
     floatingActionButtonTheme: FloatingActionButtonThemeData(
       backgroundColor: Colors.white,
     ),
   drawerTheme: DrawerThemeData(
     backgroundColor:UiConfig.dark,
     elevation: 5
   ),
     iconTheme: IconThemeData(
       color: Colors.white
     ),
     cardColor: UiConfig.dark,
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       type: BottomNavigationBarType.fixed,
       selectedItemColor: Colors.white,
       unselectedItemColor: Colors.grey,
       elevation: 20.0,
       backgroundColor: UiConfig.dark,
     ),
     // textTheme: TextTheme(
     //   bodyText1: TextStyle(
     //     fontSize: 18.0,
     //     fontWeight: FontWeight.w600,
     //     color: Colors.white,
     //   ),
     //   bodyText2:TextStyle(
     //     fontSize: 18.0,
     //     fontWeight: FontWeight.w600,
     //     color: Colors.white,
     //   ) ,
     //   subtitle1: TextStyle(
     //     fontSize: 22.0,
     //     fontWeight: FontWeight.w600,
     //     color: Colors.white,
     //   ),
     //   subtitle2: TextStyle(
     //     fontSize: 20.0,
     //     fontWeight: FontWeight.w600,
     //     color: Colors.white,
     // ),
     //     caption: TextStyle(
     //         fontSize: 20.0,
     //         color: Colors.blue
     //     ),
     //   button: TextStyle(
     //     fontSize: 18,
     //     fontWeight: FontWeight.bold,
     //     color: Colors.white60,
     //   ),
     // )
 );

  final _getStorage = GetStorage();
  final _darkThemeKey = 'isDarkTheme';

  void saveThemeData(bool isDarkMode){
    _getStorage.write(_darkThemeKey, isDarkMode);
  }
  bool isSavedDarkMode(){
    return _getStorage.read(_darkThemeKey)??false;
  }

  ThemeMode getThemeMode(){
    return isSavedDarkMode()? ThemeMode.dark : ThemeMode.light;
  }
   changeTheme(){
    Get.changeThemeMode(isSavedDarkMode()?ThemeMode.light: ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
    print("is DARK: ${isSavedDarkMode()}");
  }

}