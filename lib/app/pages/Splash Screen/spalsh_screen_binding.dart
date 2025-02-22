import 'package:get/get.dart';
import 'package:hamatech_worker/app/pages/Splash%20Screen/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}