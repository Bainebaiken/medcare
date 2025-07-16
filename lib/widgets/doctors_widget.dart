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
          GestureDetector(
            // onTap: () => controller.onSeeAllTap(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Consultation with a specialist',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Promote health via chat or call',
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, size: 16, color: Colors.blue[700]),
              ],
            ),
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
                    Expanded(child: buildDoctorProfile(context, controller, 'Dr. Leonard Campbell', 'assets/dr leo.jpg', 'Heart Specialist')),
                    SizedBox(width: 12),
                    Expanded(child: buildDoctorProfile(context, controller, 'Dr. Diana Campbell', 'assets/profile-doctor.jpg', 'Dentist')),
                    SizedBox(width: 12),
                    Expanded(child: buildDoctorProfile(context, controller, 'Dr. Sarah Johnson', 'assets/profile-doctor.jpg', 'General Practitioner')),
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

  static Widget buildDoctorProfile(BuildContext context, HomeController controller, String name, String imagePath, String specialization) {
    return GestureDetector(
      onTap: () => controller.onDoctorTap(name),
      child: Column(
        children: [
        
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4),
          Text(
            specialization,
            style: TextStyle(fontSize: 10, color: Colors.grey[600]),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}