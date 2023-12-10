import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config.dart';


class DefaultButton extends StatelessWidget{
  String? txt;
       Color? bg_color;
       Color? txt_color;
     Function()? function;

     DefaultButton({
    required this.txt,
       required this.function,
       required this.bg_color,
       required this.txt_color,
});

     @override
  Widget build(BuildContext context) {
       Size size = MediaQuery.of(context).size;
       return GestureDetector(
         //onTap: function!(),
         onTap: (){
           function!();
         },
         child: Container(
           width: double.infinity,
           alignment: Alignment.center,
           height: 51,
           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
             borderRadius: BorderRadius.circular(20),
             color: bg_color,
             // border: Border.all(
             //   color: txt_color!,
             //   width: 1,
             // ),
           ),
           child: Center(
             child: Text(
               txt!,
               style: TextStyle(
                 color: txt_color,
                 fontSize: 24,
                 fontWeight: FontWeight.bold,
               ),
               textAlign: TextAlign.center,
             ),
           ),
         ),
       );
  }
}

