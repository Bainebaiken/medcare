import 'package:flutter/material.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/controllers/home_controller.dart';

class ArticlesWidget {
  static Widget buildHealthArticlesSection(BuildContext context, HomeController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.basePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Health Articles', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 1)),
          buildArticleCard(context, controller, 'Understanding Vaccination: The Importance of Preventive Medicine', 'Jan 12, 2023', 'assets/health.jpg'),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 1)),
          buildArticleCard(context, controller, 'Turning Bad Habits into Healthy Habits: Tips for Living Better', 'Jan 10, 2023', 'assets/health_tips.jpg'),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 1)),
          buildArticleCard(context, controller, 'Mental Health Awareness: Breaking the Stigma', 'Jan 08, 2023', 'assets/mental_health.jpg'),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 2)),
        ],
      ),
    );
  }

  static Widget buildArticleCard(BuildContext context, HomeController controller, String title, String date, String imagePath) {
    return GestureDetector(
      onTap: () => controller.onArticleTap(title),
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          // ignore: deprecated_member_use
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 3, offset: const Offset(0, 1))],
        ),
        child: Row(
          children: [
            Container(width: 60, height: 60, decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover))),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13), maxLines: 2, overflow: TextOverflow.ellipsis),
                  SizedBox(height: 4),
                  Text(date, style: TextStyle(color: Colors.grey[600], fontSize: 11)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}