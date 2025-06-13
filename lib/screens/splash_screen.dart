import 'package:flutter/material.dart';
import 'package:medcare/constants/app_color.dart';
import '../Widgets/spacer_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Group.png', height: 100),
              SpacerWidget.buildSpacer(20.0),
              Text(
                'MEDCARE',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ), 
        ),
      ),
    );
  }
}