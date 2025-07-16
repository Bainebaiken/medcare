import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/constants/app_color.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/constants/text_styles.dart';
import 'package:medcare/controllers/home_controller.dart';
import 'package:medcare/widgets/articlewidget.dart';
import 'package:medcare/widgets/categorieswidget.dart';
import 'package:medcare/widgets/doctors_widget.dart';
import 'package:medcare/widgets/hospital_widget.dart';
import 'package:medcare/widgets/product_widget.dart';
import 'package:medcare/widgets/spacer_widget.dart';
import 'package:medcare/widgets/navbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildHeaderSection(BuildContext context, HomeController controller) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(AppDimensions.basePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi, Alexander',
                  style: AppTextStyles.titleStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    _buildIconButton(Icons.search),
                    SizedBox(width: 8),
                    _buildIconButton(Icons.notifications_outlined),
                  ],
                ),
              ],
            ),
            SizedBox(height: AppDimensions.getResponsiveHeight(context, 2)),
            _buildBannerSection(context),
            SizedBox(height: AppDimensions.getResponsiveHeight(context, 2)),
            _buildSearchBar(controller),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.grey[100], shape: BoxShape.circle),
      child: Icon(icon, color: Colors.grey[600], size: 20),
    );
  }

  Widget _buildBannerSection(BuildContext context) {
    return Container(
      height: AppDimensions.getResponsiveHeight(context, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [AppColors.primaryColor, AppColors.primaryColor.withOpacity(0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(right: -20, top: -20, child: _buildDecorationCircle(80)),
          Positioned(right: 20, bottom: -30, child: _buildDecorationCircle(60)),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Experience Seamless\nHealthcare Management\nwith MediConnect',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () => Get.snackbar('Get Started', 'Welcome to MediConnect'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 0,
                  ),
                  child: Text(
                    'Fill Your Profile Now',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDecorationCircle(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.1), shape: BoxShape.circle),
    );
  }

  Widget _buildSearchBar(HomeController controller) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        onChanged: (value) => controller.searchText.value = value,
        decoration: InputDecoration(
          hintText: 'Find a doctor, medicine or health service',
          hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
          prefixIcon: Icon(Icons.search, color: Colors.grey[400], size: 20),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        ),
        onSubmitted: (value) => Get.snackbar('Search', 'Searching for: $value'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeaderSection(context, controller),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
              CategoriesWidget.buildCategoriesSection(context, controller),
              DoctorsWidget.buildDoctorsSection(context, controller),
              ProductsWidget.buildBestSellingProductsSection(context, controller),
              HospitalsWidget.buildNearbyHospitalsSection(context, controller),
              ArticlesWidget.buildHealthArticlesSection(context, controller),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavbarWidget.buildBottomNavigationBar(controller),
    );
  }
}