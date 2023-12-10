import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.text,
    this.hint,
    this.validate,
    this.onsave,
    this.controller,
    this.isPassword,
    this.isObsecure,
    this.textInputType,
    this.onFieldSubmitted,
    this.onChanged,
    this.initialVal,
    this.prefixIcon,
    this.focusNode,
  }) : super(key: key);
  final String? text;
  final String? initialVal;
  final TextEditingController? controller;
  final String? hint;
  final String? Function(String?)? validate;
  final String? Function(String?)? onsave;
  final String? Function(String?)? onFieldSubmitted;

  final bool? isPassword;
  bool? isObsecure;
  final FocusNode? focusNode;

  final TextInputType? textInputType;
  final String? Function(String?)? onChanged;
  final prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child:
          StatefulBuilder(builder: (context, setState) {
            return Container(
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey[400]!,
                ),
              ),
              child:
              TextFormField(
                initialValue: initialVal != null ? initialVal : null,
                onSaved: onsave,
                validator: validate,
                obscureText: isObsecure!,
                keyboardType: textInputType,
                onFieldSubmitted: onFieldSubmitted,
                onChanged: onChanged,
                focusNode: focusNode,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 25, vertical: 15),
                  // prefixIcon: Image.asset(prefixIcon,color: Color(0xff303443),width: 20,height: 20,),
                  //prefixIcon: prefixIcon != null ? prefixIcon : SizedBox.shrink(),
                  hintText: "$hint",

                  hintStyle: TextStyle(color: Colors.grey,),
                  fillColor: Colors.white,
                  suffixIcon: isPassword!
                      ? IconButton(
                    icon: Icon(
                      isObsecure!
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: isObsecure!
                          ? UiConfig.colorSec
                          : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isObsecure = !isObsecure!;
                      });
                    },
                    alignment: Alignment.center,
                    // padding: EdgeInsets.only(bottom: 50),
                  )
                      : SizedBox.shrink(),
                ),
              ),
            );
          })
    );
    //   Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 15),
    //   child: Container(
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         // isForgetPassword == false ?
    //
    //         // Padding(
    //         //   padding: const EdgeInsets.only(bottom: 12.0),
    //         //   child: Text(
    //         //     text!,
    //         //     style: TextStyle(
    //         //       color: Colors.grey[800],
    //         //       fontFamily: Config.fontPrime,
    //         //       fontSize: 16,
    //         //       fontWeight: FontWeight.w500,
    //         //     ),
    //         //   ),
    //         // ),
    //
    //
    //         //     :
    //         // Padding(
    //         //   padding: const EdgeInsets.only(bottom: 12.0),
    //         //   child: Row(
    //         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         //     children: [
    //         //       Text(
    //         //         text!,
    //         //         style: TextStyle(
    //         //           color: Colors.grey[800],
    //         //           fontFamily: Config.fontPrime,
    //         //           fontSize: 16,
    //         //           fontWeight: FontWeight.w500,
    //         //         ),
    //         //       ),
    //         //       GestureDetector(
    //         //         onTap: (){
    //         //           Get.to(()=>ForgetPasswordScreen());
    //         //         },
    //         //         child: Text(
    //         //           "Forgot Password?",
    //         //           style: TextStyle(
    //         //             color: Colors.grey[800],
    //         //             fontFamily: Config.fontPrime,
    //         //             fontSize: 16,
    //         //             fontWeight: FontWeight.w500,
    //         //           ),
    //         //         ),
    //         //       ),
    //         //     ],
    //         //   ),
    //         // ),
    //     Container(
    //             width: double.infinity,
    //             height: 55,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //               color: Color(0xffF6F6F6),
    //               border: Border.all(
    //                 color: UiConfig.colorSec,
    //               ),
    //             ),
    //             child: TextFormField(
    //               initialValue: initialVal != null ? initialVal : null,
    //               onSaved: onsave,
    //               validator: validate,
    //               obscureText: isObsecure!,
    //               keyboardType: textInputType,
    //               onChanged: onChanged,
    //               decoration: InputDecoration(
    //                 border: OutlineInputBorder(
    //                   borderRadius: BorderRadius.circular(20),
    //                   borderSide: BorderSide.none,
    //                 ),
    //                 focusedBorder: InputBorder.none,
    //                 contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
    //                 // prefixIcon: Image.asset(prefixIcon,color: Color(0xff303443),width: 20,height: 20,),
    //                 //prefixIcon: prefixIcon != null ? prefixIcon : SizedBox.shrink(),
    //                 hintText: "   $hint",
    //
    //                 hintStyle: TextStyle(color: Colors.grey, ),
    //                 fillColor: Colors.white,
    //                 suffixIcon: isPassword!
    //                     ? IconButton(
    //                   icon: Icon(
    //                     isObsecure!
    //                         ? Icons.visibility
    //                         : Icons.visibility_off,
    //                     color: isObsecure!
    //                         ? UiConfig.colorSec
    //                         : Colors.grey,
    //                   ),
    //                   onPressed: () {
    //                     // setState(() {
    //                     //   isObsecure = !isObsecure!;
    //                     // });
    //                   },
    //                   alignment: Alignment.center,
    //                   // padding: EdgeInsets.only(bottom: 50),
    //                 )
    //                     : SizedBox.shrink(),
    //               ),
    //             ),
    // ),
    //
    //       ],
    //     ),
    //   ),
    // );
  }
}