import 'package:flutter/material.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/constants/text_styles.dart';
import 'package:medcare/widgets/eleveted_button_widget.dart';
import '../Widgets/spacer_widget.dart';


class OTPEmailScreen extends StatelessWidget {
  const OTPEmailScreen({super.key, required String email});

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
                'Register',
                style: AppTextStyles.titleStyle,
                textAlign: TextAlign.center,
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
              Text(
                'Enter the 4-digit verification code (OTP) sent to your email info@gmail.com',
                style: AppTextStyles.descriptionStyle,
                textAlign: TextAlign.center,
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDimensions.getResponsiveWidth(context, 2)),
                  child: SizedBox(
                    width: AppDimensions.getResponsiveWidth(context, 10),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )),
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 5)),
              ElevatedButtonWidget.buildElevatedButton(
                onPressed: () {},
                text: 'Continue',
              ),
              SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
              Text(
                'Resend in 60 seconds',
                style: AppTextStyles.descriptionStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}