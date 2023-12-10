import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;
  Color color;
  CustomListTile({required this.title, required this.icon, this.onTap,this.color = UiConfig.colorSec});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      // padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        trailing: Icon(icon,color: Colors.white,size: 28,),
        title: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white)),
        onTap: onTap,
      ),
    );
  }
}
