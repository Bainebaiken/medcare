import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/Constants/text_styles.dart';
import 'package:medcare/constants/app_color.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/screens/login_screen.dart';
import 'package:medcare/screens/register/no_phone_register_screen.dart';
import 'package:medcare/widgets/eleveted_button_widget.dart';
import '../../Widgets/spacer_widget.dart';
import '../otp_email_screen.dart';

class EmailRegisterScreen extends StatelessWidget {
  const EmailRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppDimensions.basePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 5)),
              Text(
                'Complete Personal Identification',
                style: AppTextStyles.titleStyle,
                textAlign: TextAlign.center,
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
              Text(
                'You can connect with all healthcare you’ve previously visited with.',
                style: AppTextStyles.descriptionStyle,
                textAlign: TextAlign.center,
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 5)),
              GestureDetector(
                onTap: () => Get.to(() => const NoPhoneRegisterScreen()), 
                child: SizedBox(
                  width: AppDimensions.getResponsiveWidth(context, 80),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'No Phone',
                      labelStyle: AppTextStyles.descriptionStyle.copyWith(
                        color: AppColors.primaryColor, 
                        decoration: TextDecoration.underline, 
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Full name',
                  border: OutlineInputBorder(),
                ),
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Gender',
                  border: OutlineInputBorder(),
                ),
                items: ['Male', 'Female', 'Other']
                    .map((label) => DropdownMenuItem(
                          value: label,
                          child: Text(label),
                        ))
                    .toList(),
                onChanged: (_) {},
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Date of birth',
                  border: OutlineInputBorder(),
                ),
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 5)),
              ElevatedButtonWidget.buildElevatedButton(
                onPressed: () => Get.to(() => const OTPEmailScreen(email: '',)),
                text: 'Register',
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
              GestureDetector(
                onTap: () => Get.to(() => const LoginScreen()), 
                child: Text(
                  'Already have an account? Click to log in',
                  style: AppTextStyles.descriptionStyle.copyWith(
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}