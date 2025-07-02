// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:medcare/Constants/text_styles.dart';
// import 'package:medcare/constants/app_color.dart';
// import 'package:medcare/constants/app_dimesions.dart';
// import 'package:medcare/screens/service_screen.dart';
// import '../Widgets/spacer_widget.dart';

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
//                   // Text(
//                   //   'Hi, Alexander',
//                   //   style: AppTextStyles.titleStyle,
//                   // ),
//                   IconButton(
//                     icon: Icon(Icons.notifications, color: AppColors.primaryColor),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
              
//               Container(
//                 height: AppDimensions.getResponsiveHeight(context, 20),
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/home_background.png'),
//                     fit: BoxFit.cover,
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
//                   prefixIcon: Icon(Icons.search, color: AppColors.primaryColor),
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                   filled: true,
//                   fillColor: Colors.grey[200],
//                 ),
//               ),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
              
//               Text('Categories', style: AppTextStyles.descriptionStyle),
//               SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     _buildCategoryIcon(context, CustomIcons.icon_all, 'All'),
//                     _buildCategoryIcon(context, CustomIcons.icon_general_practitioner, 'General Practitioner'),
//                     _buildCategoryIcon(context, CustomIcons.icon_dentistry, 'Dentistry'),
//                     _buildCategoryIcon(context, CustomIcons.icon_gynecology, 'Gynecology'),
//                     _buildCategoryIcon(context, CustomIcons.icon_ophthalmology, 'Ophthalmology'),
//                     _buildCategoryIcon(context, CustomIcons.icon_neurology, 'Neurology'),
//                     _buildCategoryIcon(context, CustomIcons.icon_otorhinolaryngology, 'Otorhinolaryngology'),
//                     _buildCategoryIcon(context, CustomIcons.icon_pulmonologist, 'Pulmonologist'),
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
//                     _buildDoctorCard(context, 'Dr. Leonard Campbell', 'assets/chat_doctor_images/doctor1.png'),
//                     _buildDoctorCard(context, 'Dr. Diana Campbell', 'assets/chat_doctor_images/doctor2.png'),
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
//                     _buildProductCard(context, 'Product 1', 'assets/product_images/product1.png'),
//                     _buildProductCard(context, 'Product 2', 'assets/product_images/product2.png'),
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
//                 'assets/article_images/article1.png',
//               ),
//               _buildArticleCard(
//                 context,
//                 'Turning Bad Habits into Healthy Habits: Tips for Living Better',
//                 'Jan 10, 2023',
//                 'assets/article_images/article2.png',
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Services'),
//           BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//         currentIndex: 0,
//         onTap: (index) {
//           if (index == 1) Get.to(() => const ServicesScreen());
//         },
//         selectedItemColor: AppColors.primaryColor,
//       ),
//     );
//   }

//   Widget _buildCategoryIcon(BuildContext context, IconData icon, String label) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             icon,
//             size: AppDimensions.getResponsiveHeight(context, 6),
//             color: AppColors.primaryColor,
//           ),
//           Text(label, style: AppTextStyles.descriptionStyle, textAlign: TextAlign.center),
//         ],
//       ),
//     );
//   }

//   Widget _buildDoctorCard(BuildContext context, String name, String imagePath) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
//       child: Column(
//         children: [
//           Image.asset(imagePath, height: AppDimensions.getResponsiveHeight(context, 10)),
//           Text(name, style: AppTextStyles.descriptionStyle),
//           Text('Chat Doctor', style: AppTextStyles.descriptionStyle),
//         ],
//       ),
//     );
//   }

//   Widget _buildProductCard(BuildContext context, String name, String imagePath) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
//       child: Column(
//         children: [
//           Image.asset(imagePath, height: AppDimensions.getResponsiveHeight(context, 10)),
//           Text(name, style: AppTextStyles.descriptionStyle),
//         ],
//       ),
//     );
//   }

//   Widget _buildHospitalCard(BuildContext context, String name, String imagePath) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
//       child: Column(
//         children: [
//           Image.asset(imagePath, height: AppDimensions.getResponsiveHeight(context, 10)),
//           Text(name, style: AppTextStyles.descriptionStyle),
//         ],
//       ),
//     );
//   }

//   Widget _buildArticleCard(BuildContext context, String title, String date, String imagePath) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: AppDimensions.getResponsiveHeight(context, 2)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.asset(imagePath, height: AppDimensions.getResponsiveHeight(context, 15), width: double.infinity, fit: BoxFit.cover),
//           Text(title, style: AppTextStyles.descriptionStyle),
//           Text(date, style: AppTextStyles.descriptionStyle),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/constants/app_color.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/constants/text_styles.dart';
import 'package:medcare/screens/service_screen.dart';
import 'package:medcare/utils/medcare_icons.dart';
import 'package:medcare/widgets/spacer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    style: AppTextStyles.titleStyle,
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications, color: AppColors.primaryColor),
                    onPressed: () {
                      Get.snackbar('Notifications', 'No new notifications');
                    },
                  ),
                ],
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
              Container(
                height: AppDimensions.getResponsiveHeight(context, 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/home_background.png'),
                    fit: BoxFit.cover,
                    onError: (exception, stackTrace) => Icon(Icons.broken_image),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Experience Seamless Healthcare Management with MediConnect',
                    style: AppTextStyles.descriptionStyle.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Find a doctor, medicine or health service',
                  prefixIcon: const Icon(Icons.search, color: AppColors.primaryColor),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                onSubmitted: (value) {
                  Get.snackbar('Search', 'Searching for: $value');
                },
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
              Text('Categories', style: AppTextStyles.descriptionStyle),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCategoryIcon(context, Medcare.border_all, 'All'),
                    _buildCategoryIcon(context, Medcare.eye, 'General Practitioner'),
                    _buildCategoryIcon(context, Medcare.ear, 'Dentistry'),
                    _buildCategoryIcon(context, Medcare.tooth, 'Gynecology'),
                    _buildCategoryIcon(context, Medcare.lung, 'Ophthalmology'),
                    _buildCategoryIcon(context, Medcare.gal, 'Neurology'),
                    _buildCategoryIcon(context, Medcare.general, 'Otorhinolaryngology'),
                    _buildCategoryIcon(context, Medcare.mouth, 'Pulmonologist'),
                  ],
                ),
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
              Text('Consultation with a specialist', style: AppTextStyles.descriptionStyle),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildDoctorCard(context, 'Dr. Leonard Campbell', 'assets/dr leo.jpg'),
                    _buildDoctorCard(context, 'Dr. Diana Campbell', 'assets/profile-doctor.jpg'),
                  ],
                ),
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
              Text('Best Selling Products', style: AppTextStyles.descriptionStyle),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildProductCard(context, 'Braces', 'assets/braces.jpg'),
                    _buildProductCard(context, 'vaccine', 'assets/Vaccine.jpg'),
                    _buildProductCard(context, 'mask', 'assets/vaccine1.jpg'),
                    _buildProductCard(context, 'wheelchair', 'assets/wheelchair.jpg'),
                  ],
                ),
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
              Text('Nearby Hospitals', style: AppTextStyles.descriptionStyle),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildHospitalCard(context, 'RSCM', 'assets/hospital_logos/rscm.png'),
                    _buildHospitalCard(context, 'Mera Kenyatta', 'assets/hospital_logos/kenyatta.png'),
                  ],
                ),
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2)),
              Text('Health Article', style: AppTextStyles.descriptionStyle),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 1)),
              _buildArticleCard(
                context,
                'Understanding Vaccination, The Importance of Preventive Medicine',
                'Jan 12, 2023',
                'assets/health.jpg',
              ),
              _buildArticleCard(
                context,
                'Turning Bad Habits into Healthy Habits: Tips for Living Better',
                'Jan 10, 2023',
                'assets/healthtip.jpg',
              ),
              _buildArticleCard(
                context,
                'Turning Bad Habits into Healthy Habits: Tips for Living Better',
                'Jan 10, 2023',
                'assets/healthtip.jpg',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Services'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
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
        },
      ),
    );
  }

  Widget _buildCategoryIcon(BuildContext context, IconData icon, String label) {
    return InkWell(
      onTap: () {
        Get.snackbar('Category', 'Selected: $label');
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: AppDimensions.getResponsiveHeight(context, 6),
              color: AppColors.primaryColor,
              semanticLabel: label,
            ),
            Text(
              label,
              style: AppTextStyles.descriptionStyle,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorCard(BuildContext context, String name, String imagePath) {
    return InkWell(
      onTap: () {
        Get.snackbar('Doctor', 'Selected: $name');
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: AppDimensions.getResponsiveHeight(context, 10),
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
            ),
            Text(name, style: AppTextStyles.descriptionStyle),
            Text('Chat Doctor', style: AppTextStyles.descriptionStyle),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, String name, String imagePath) {
    return InkWell(
      onTap: () {
        Get.snackbar('Product', 'Selected: $name');
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: AppDimensions.getResponsiveHeight(context, 10),
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
            ),
            Text(name, style: AppTextStyles.descriptionStyle),
          ],
        ),
      ),
    );
  }

  Widget _buildHospitalCard(BuildContext context, String name, String imagePath) {
    return InkWell(
      onTap: () {
        Get.snackbar('Hospital', 'Selected: $name');
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: AppDimensions.getResponsiveHeight(context, 10),
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
            ),
            Text(name, style: AppTextStyles.descriptionStyle),
          ],
        ),
      ),
    );
  }

  Widget _buildArticleCard(BuildContext context, String title, String date, String imagePath) {
    return InkWell(
      onTap: () {
        Get.snackbar('Article', 'Selected: $title');
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: AppDimensions.getResponsiveHeight(context, 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: AppDimensions.getResponsiveHeight(context, 15),
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
            ),
            Text(title, style: AppTextStyles.descriptionStyle),
            Text(
              date,
              style: AppTextStyles.descriptionStyle.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}