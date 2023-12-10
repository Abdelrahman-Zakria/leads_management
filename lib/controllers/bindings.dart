import 'package:get/get.dart';
import 'package:leads_management/controllers/authController.dart';
import 'package:leads_management/controllers/homeController.dart';
import 'package:leads_management/controllers/leadsController.dart';

class Binding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => AuthController());
    Get.lazyPut(()=>HomeController());
    Get.lazyPut(() => LeadsController());

  }
}