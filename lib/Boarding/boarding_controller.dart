import 'package:get/get.dart';

class BoardingController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3));
    // Get.off(HomePage());
  }
}