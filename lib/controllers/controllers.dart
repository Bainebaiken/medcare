import 'package:get/get.dart';

class WalkthroughController extends GetxController {
  var currentPage = 0.obs;

  void nextPage() {
    if (currentPage.value < 2) {
      currentPage.value++;
      Get.toNamed('/walkthrough${currentPage.value + 1}');
    }
  }

  void start() {
    Get.offAllNamed('/home');
  }
}