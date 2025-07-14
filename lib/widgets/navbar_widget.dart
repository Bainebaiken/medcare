import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/constants/app_color.dart';
import 'package:medcare/controllers/home_controller.dart';


class NavbarWidget {
  static Widget buildBottomNavigationBar(HomeController controller) {
    return Obx(() => BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: Colors.grey[400],
      currentIndex: controller.selectedBottomIndex.value,
      onTap: (index) {
        controller.onBottomNavTap(index);
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.medical_services), label: 'Services'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    ));
  }
}