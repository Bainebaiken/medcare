import 'package:flutter/material.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/controllers/home_controller.dart';

class DoctorsWidget {
  static Widget buildDoctorsSection(BuildContext context, HomeController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.basePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Consultation with a specialist', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                  SizedBox(height: 2),
                  Text('Thousands of doctors ready to help you', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                ],
              ),
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 2)),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 5, offset: const Offset(0, 2))],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Chat Doctor', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(child: buildDoctorProfile(context, controller, 'Dr. Leonard Campbell', 'assets/dr_leo.jpg')),
                    SizedBox(width: 12),
                    Expanded(child: buildDoctorProfile(context, controller, 'Dr. Diana Campbell', 'assets/profile_doctor.jpg')),
                    SizedBox(width: 12),
                    Expanded(child: buildDoctorProfile(context, controller, 'Dr. Sarah Johnson', 'assets/dr_sarah.jpg')),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 3)),
        ],
      ),
    );
  }

  static Widget buildDoctorProfile(BuildContext context, HomeController controller, String name, String imagePath) {
    return GestureDetector(
      onTap: () => controller.onDoctorTap(name),
      child: Column(
        children: [
          CircleAvatar(radius: 30, backgroundImage: AssetImage(imagePath)),
          SizedBox(height: 8),
          Text(name, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11), textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}