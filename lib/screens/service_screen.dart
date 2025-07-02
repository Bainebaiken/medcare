import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:medcare/Constants/text_styles.dart';
import 'package:medcare/constants/app_color.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/screens/home_screen.dart';
import '../Widgets/spacer_widget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.basePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Services', style: AppTextStyles.titleStyle),
                IconButton(
                  icon: Icon(Icons.arrow_back, color: AppColors.primaryColor),
                  onPressed: () => Get.back(),
                ),
              ],
            ),
            SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: AppDimensions.getResponsiveWidth(context, 2),
              mainAxisSpacing: AppDimensions.getResponsiveHeight(context, 2),
              children: [
                _buildServiceCard(context, 'Find Doctor', 'assets/service_icons/doctor.png'),
                _buildServiceCard(context, 'Hospitals', 'assets/service_icons/hospital.png'),
                _buildServiceCard(context, 'Emergency', 'assets/service_icons/emergency.png'),
                _buildServiceCard(context, 'Medical Reminder', 'assets/service_icons/reminder.png'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Services'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) Get.to(() => const HomeScreen());
        },
        selectedItemColor: AppColors.primaryColor,
      ),
    );
  }

  Widget _buildServiceCard(BuildContext context, String title, String imagePath) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: AppDimensions.getResponsiveHeight(context, 8)),
          Text(title, style: AppTextStyles.descriptionStyle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}