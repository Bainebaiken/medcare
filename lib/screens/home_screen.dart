
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:medcare/constants/app_color.dart';
// import 'package:medcare/constants/app_dimesions.dart';
// import 'package:medcare/constants/text_styles.dart';
// import 'package:medcare/screens/service_screen.dart';
// import 'package:medcare/utils/medcare_icons.dart';
// import 'package:medcare/widgets/spacer_widget.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(AppDimensions.basePadding),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Hi, Alexander',
//                     style: AppTextStyles.titleStyle,
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.notifications, color: AppColors.primaryColor),
//                     onPressed: () {
//                       Get.snackbar('Notifications', 'No new notifications');
//                     },
//                   ),
//                 ],
//               ),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
//               Container(
//                 height: AppDimensions.getResponsiveHeight(context, 20),
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: const AssetImage('assets/home_background.png'),
//                     fit: BoxFit.cover,
//                     onError: (exception, stackTrace) => Icon(Icons.broken_image),
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Experience Seamless Healthcare Management with MediConnect',
//                     style: AppTextStyles.descriptionStyle.copyWith(color: Colors.white),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Find a doctor, medicine or health service',
//                   prefixIcon: const Icon(Icons.search, color: AppColors.primaryColor),
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                   filled: true,
//                   fillColor: Colors.grey[200],
//                 ),
//                 onSubmitted: (value) {
//                   Get.snackbar('Search', 'Searching for: $value');
//                 },
//               ),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
//               Text('Categories', style: AppTextStyles.descriptionStyle),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     _buildCategoryIcon(context, Medcare.border_all, 'All'),
//                     _buildCategoryIcon(context, Medcare.eye, 'General Practitioner'),
//                     _buildCategoryIcon(context, Medcare.ear, 'Dentistry'),
//                     _buildCategoryIcon(context, Medcare.tooth, 'Gynecology'),
//                     _buildCategoryIcon(context, Medcare.lung, 'Ophthalmology'),
//                     _buildCategoryIcon(context, Medcare.gal, 'Neurology'),
//                     _buildCategoryIcon(context, Medcare.general, 'Otorhinolaryngology'),
//                     _buildCategoryIcon(context, Medcare.mouth, 'Pulmonologist'),
//                   ],
//                 ),
//               ),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
//               Text('Consultation with a specialist', style: AppTextStyles.descriptionStyle),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     _buildDoctorCard(context, 'Dr. Leonard Campbell', 'assets/dr leo.jpg'),
//                     _buildDoctorCard(context, 'Dr. Diana Campbell', 'assets/profile-doctor.jpg'),
//                   ],
//                 ),
//               ),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
//               Text('Best Selling Products', style: AppTextStyles.descriptionStyle),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     _buildProductCard(context, 'Braces', 'assets/braces.jpg'),
//                     _buildProductCard(context, 'vaccine', 'assets/Vaccine.jpg'),
//                     _buildProductCard(context, 'mask', 'assets/vaccine1.jpg'),
//                     _buildProductCard(context, 'wheelchair', 'assets/wheelchair.jpg'),
//                   ],
//                 ),
//               ),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
//               Text('Nearby Hospitals', style: AppTextStyles.descriptionStyle),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     _buildHospitalCard(context, 'RSCM', 'assets/hospital_logos/rscm.png'),
//                     _buildHospitalCard(context, 'Mera Kenyatta', 'assets/hospital_logos/kenyatta.png'),
//                   ],
//                 ),
//               ),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
//               Text('Health Article', style: AppTextStyles.descriptionStyle),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
//               _buildArticleCard(
//                 context,
//                 'Understanding Vaccination, The Importance of Preventive Medicine',
//                 'Jan 12, 2023',
//                 'assets/health.jpg',
//               ),
//               _buildArticleCard(
//                 context,
//                 'Turning Bad Habits into Healthy Habits: Tips for Living Better',
//                 'Jan 10, 2023',
//                 'assets/healthtip.jpg',
//               ),
//               _buildArticleCard(
//                 context,
//                 'Turning Bad Habits into Healthy Habits: Tips for Living Better',
//                 'Jan 10, 2023',
//                 'assets/healthtip.jpg',
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Services'),
//           BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//         currentIndex: 0,
//         selectedItemColor: AppColors.primaryColor,
//         unselectedItemColor: Colors.grey,
//         onTap: (index) {
//           switch (index) {
//             case 0:
              
//               break;
//             case 1:
//               Get.to(() => const ServicesScreen());
//               break;
//             case 2:
//               Get.snackbar('History', 'Navigating to History Screen');
//               break;
//             case 3:
//               Get.snackbar('Profile', 'Navigating to Profile Screen');
//               break;
//           }
//         },
//       ),
//     );
//   }

//   Widget _buildCategoryIcon(BuildContext context, IconData icon, String label) {
//     return InkWell(
//       onTap: () {
//         Get.snackbar('Category', 'Selected: $label');
//       },
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               icon,
//               size: AppDimensions.getResponsiveHeight(context, 6),
//               color: AppColors.primaryColor,
//               semanticLabel: label,
//             ),
//             Text(
//               label,
//               style: AppTextStyles.descriptionStyle,
//               textAlign: TextAlign.center,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDoctorCard(BuildContext context, String name, String imagePath) {
//     return InkWell(
//       onTap: () {
//         Get.snackbar('Doctor', 'Selected: $name');
//       },
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
//         child: Column(
//           children: [
//             Image.asset(
//               imagePath,
//               height: AppDimensions.getResponsiveHeight(context, 10),
//               errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
//             ),
//             Text(name, style: AppTextStyles.descriptionStyle),
//             Text('Chat Doctor', style: AppTextStyles.descriptionStyle),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildProductCard(BuildContext context, String name, String imagePath) {
//     return InkWell(
//       onTap: () {
//         Get.snackbar('Product', 'Selected: $name');
//       },
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
//         child: Column(
//           children: [
//             Image.asset(
//               imagePath,
//               height: AppDimensions.getResponsiveHeight(context, 10),
//               errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
//             ),
//             Text(name, style: AppTextStyles.descriptionStyle),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildHospitalCard(BuildContext context, String name, String imagePath) {
//     return InkWell(
//       onTap: () {
//         Get.snackbar('Hospital', 'Selected: $name');
//       },
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
//         child: Column(
//           children: [
//             Image.asset(
//               imagePath,
//               height: AppDimensions.getResponsiveHeight(context, 10),
//               errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
//             ),
//             Text(name, style: AppTextStyles.descriptionStyle),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildArticleCard(BuildContext context, String title, String date, String imagePath) {
//     return InkWell(
//       onTap: () {
//         Get.snackbar('Article', 'Selected: $title');
//       },
//       child: Padding(
//         padding: EdgeInsets.only(bottom: AppDimensions.getResponsiveHeight(context, 2)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               imagePath,
//               height: AppDimensions.getResponsiveHeight(context, 15),
//               width: double.infinity,
//               fit: BoxFit.cover,
//               errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
//             ),
//             Text(title, style: AppTextStyles.descriptionStyle),
//             Text(
//               date,
//               style: AppTextStyles.descriptionStyle.copyWith(color: Colors.grey),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




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
                Text('Hi, Alexander', style: AppTextStyles.titleStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
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
      height: AppDimensions.getResponsiveHeight(context, 18),
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
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600, height: 1.3),
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
                  child: Text('Get Started Now', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
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
      decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(25)),
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