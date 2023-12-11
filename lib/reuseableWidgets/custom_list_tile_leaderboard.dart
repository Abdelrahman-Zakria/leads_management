import 'package:flutter/material.dart';

class CustomListTileLeaderBoard extends StatelessWidget {
  final IconData? startIcon;
  final Color startIconColor;
  final IconData genderIcon;
  final Color genderIconColor;
  final String name;
  final String points;
  final IconData endIcon;
  final Color endIconColor;

  CustomListTileLeaderBoard({
    this.startIcon,
    required this.genderIcon,
    required this.name,
    required this.points,
    required this.endIcon, required this.startIconColor, required this.genderIconColor, required this.endIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              Icon(startIcon,color: startIconColor,),
            SizedBox(width: 8),
            Icon(genderIcon,color: genderIconColor,),
            SizedBox(width: 8),
            Text(name),
            SizedBox(width: 8),
            Text(points),
          ],
        ),
        trailing: Icon(endIcon,color: endIconColor,),
      ),
    );
  }
}