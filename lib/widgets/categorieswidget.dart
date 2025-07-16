import 'package:flutter/material.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/controllers/home_controller.dart';
import 'package:medcare/utils/medcare_icons.dart';

class CategoriesWidget {
  static Widget buildCategoriesSection(BuildContext context, HomeController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.basePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 4, 
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.9,
            children: [
              buildCategoryCard(context, controller, Medcare.eye, 'General Practitioner'),
              buildCategoryCard(context, controller, Medcare.ear, 'Dentistry'),
              buildCategoryCard(context, controller, Medcare.tooth, 'Gynecology'),
              buildCategoryCard(context, controller, Medcare.lung, 'Ophthalmology'),
              buildCategoryCard(context, controller, Medcare.gal, 'Neurology'),
              buildCategoryCard(context, controller, Medcare.general, 'Otorhinolaryngology'),
              buildCategoryCard(context, controller, Medcare.mouth, 'Pulmonologist'),
              buildCategoryCard(context, controller, Medcare.border_all, 'Medicine'),
              
            ],
          ),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 3)),
        ],
      ),
    );
  }

  static Widget buildCategoryCard(BuildContext context, HomeController controller, IconData icon, String label) {
    return GestureDetector(
      onTap: () => controller.onCategoryTap(label),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 36),
            ),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}