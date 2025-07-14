
import 'package:get/get.dart';

import 'package:medcare/screens/service_screen.dart';


class HomeController extends GetxController {
  var selectedBottomIndex = 0.obs;
  var searchText = ''.obs;
  
  void onBottomNavTap(int index) {
    selectedBottomIndex.value = index;
    switch (index) {
      case 0:
        break;
      case 1:
        Get.to(() => const ServicesScreen());
        break;
      case 2:
        Get.snackbar('History', 'Navigating to History Screen');
        break;
      case 3:
        Get.snackbar('Profile', 'Navigating to Profile Screen');
        break;
    }
  }
  
  void onCategoryTap(String category) => Get.snackbar('Category', 'Selected: $category');
  void onDoctorTap(String doctorName) => Get.snackbar('Doctor', 'Selected: $doctorName');
  void onProductTap(String product) => Get.snackbar('Product', 'Selected: $product');
  void onHospitalTap(String hospital) => Get.snackbar('Hospital', 'Selected: $hospital');
  void onArticleTap(String article) => Get.snackbar('Article', 'Selected: $article');
}