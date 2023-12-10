import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leads_management/config.dart';
import 'package:leads_management/controllers/authController.dart';
import 'package:leads_management/reuseableWidgets/customButton.dart';
import 'package:leads_management/reuseableWidgets/customTextField.dart';
import 'package:leads_management/view/home_screen.dart';

class SignInScreen extends StatelessWidget {

  AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in",style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: GetBuilder<AuthController>(
        builder: (authCtrl) {
          return Container(
            width: size.width,
            height: size.height,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Image(image: AssetImage("assets/ellipse.png"),width: 64,height: 49,),
                    ],
                  ),
                  Text("Welcome Back!",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(height: 15,),
                  Text("Please Inter your email address\nand password for Login",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[400],
                  ),),
                  SizedBox(height: 65,),
                  CustomTextField(
                    controller: authCtrl.emailLoginController,
                    hint: "Email",
                    focusNode: authCtrl.emailLoginFocus,
                    isPassword: false,
                    isObsecure: false,
                    onFieldSubmitted: (val){
                      FocusScope.of(context).requestFocus(authCtrl.passLoginFocus);
                    },
                    text: "Email",
                    validate: (val){
                      if(val == null || val.isEmpty ){
                        return "Enter a valid e-mail".tr;
                      }
                      else{
                        return null;
                      }
                    },
                    textInputType: TextInputType.emailAddress,
                    onsave: (val){
                      authCtrl.emailLoginController.text = val!;
                      authCtrl.update();
                    },
                    onChanged: (val){
                      authCtrl.emailLoginController.text = val!;
                      authCtrl.update();
                    },
                  ),
                  SizedBox(height: 15,),
                  CustomTextField(
                    controller: authCtrl.passLoginController,
                    hint: "Password",
                    focusNode: authCtrl.passLoginFocus,
                    isPassword: true,
                    isObsecure: true,
                    text: "Password",
                    validate: (val){
                      if(val == null || val.isEmpty ){
                        return "Enter a valid password";
                      }
                      else{
                        return null;
                      }
                    },
                    textInputType: TextInputType.visiblePassword,
                    onsave: (val){
                      authCtrl.emailLoginController.text = val!;
                      authCtrl.update();
                    },
                    onChanged: (val){
                      authCtrl.emailLoginController.text = val!;
                      authCtrl.update();
                    },
                  ),
                  Row(
                    children: [
                      Expanded(child: SizedBox()),
                      TextButton(onPressed: (){}, child: Text("Forgot your password?",style: TextStyle(color: Colors.black),))
                    ],
                  ),
                  SizedBox(height: 65,),
                  DefaultButton(txt: "LOGIN", function: (){
                    Get.offAll(()=>MyHomePage());
                  }, bg_color: UiConfig.colorSec, txt_color: Colors.white),

                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
