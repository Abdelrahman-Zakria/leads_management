import 'package:flutter/material.dart';

class CustomCircularProgressBar extends StatelessWidget {
  final double progress;
  final String progressText;
  final String belowText;
  final Color progressColor;

  CustomCircularProgressBar({
    required this.progress,
    required this.progressText,
    required this.belowText,
    required this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.scale(
          scale: 2,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[100],
                valueColor: AlwaysStoppedAnimation<Color>(progressColor),
              ),
              Text(
                progressText,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(height: 42),
        Text(belowText,style: TextStyle(fontSize: 24),),
      ],
    );
  }
}