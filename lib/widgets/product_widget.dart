import 'package:flutter/material.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/controllers/home_controller.dart';

class ProductsWidget {
  static Widget buildBestSellingProductsSection(BuildContext context, HomeController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.basePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Best Selling Products', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 1)),
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildProductCard(context, controller, 'Braces', 'assets/braces.jpg'),
                buildProductCard(context, controller, 'Vaccine', 'assets/vaccine1.jpg'),
                buildProductCard(context, controller, 'Mask', 'assets/wheelchair.jpg'),
                buildProductCard(context, controller, 'Wheelchair', 'assets/vaccine1.jpg'),
                buildProductCard(context, controller, 'Mask', 'assets/wheelchair.jpg'),
                buildProductCard(context, controller, 'Wheelchair', 'assets/vaccine1.jpg'),
              ],
            ),
          ),
          SizedBox(height: AppDimensions.getResponsiveHeight(context, 3)),
        ],
      ),
    );
  }

  static Widget buildProductCard(BuildContext context, HomeController controller, String name, String imagePath) {
    return GestureDetector(
      onTap: () => controller.onProductTap(name),
      child: Container(
        width: 90,
        margin: EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Container(height: 80, decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover))),
            SizedBox(height: 8),
            Text(name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}