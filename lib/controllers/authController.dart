import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  TextEditingController emailLoginController = TextEditingController();
  TextEditingController passLoginController = TextEditingController();
  FocusNode emailLoginFocus = FocusNode();
  FocusNode passLoginFocus = FocusNode();
}