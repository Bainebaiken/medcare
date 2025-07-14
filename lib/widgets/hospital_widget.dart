import 'package:flutter/material.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/controllers/home_controller.dart';

class HospitalsWidget {
  static Widget buildNearbyHospitalsSection(BuildContext context, HomeController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.basePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nearby Hospitals', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 1)),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildHospitalCard(context, controller, 'RSCM', 'Cipto Mangunkusumo Hospital (RSCM)', 'assets/rscdm.png'),
                buildHospitalCard(context, controller, 'Mitra Keluarga', '24/7 Emergency Services', 'assets/emegency.png'),
                buildHospitalCard(context, controller, 'Siloam Hospital', 'Advanced Medical Care', 'assets/siloam.png'),
                buildHospitalCard(context, controller, 'Mayapada Hospital', 'Comprehensive Healthcare', 'assets/mayapada.png'),
              ],
            ),
          ),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 3)),
        ],
      ),
    );
  }

  static Widget buildHospitalCard(BuildContext context, HomeController controller, String name, String description, String imagePath) {
    return GestureDetector(
      onTap: () => controller.onHospitalTap(name),
      child: Container(
        width: 280,
        margin: EdgeInsets.only(right: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 3, offset: const Offset(0, 1))],
        ),
        child: Row(
          children: [
            Container(width: 50, height: 50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover))),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                  SizedBox(height: 4),
                  Text(description, style: TextStyle(fontSize: 12, color: Colors.grey[600]), maxLines: 2, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}