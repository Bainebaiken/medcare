import 'package:flutter/material.dart';
import 'package:medcare/widgets/eleveted_button_widget.dart';
import '../Widgets/spacer_widget.dart';
import '../Constants/text_styles.dart';

class WalkthroughScreenWidget {
  static Widget buildWalkthroughScreen({
    required BuildContext context,
    required String imagePath,
    required String title,
    required String description,
    required VoidCallback onPressed,
    required String buttonText,
  }) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, height: MediaQuery.of(context).size.height * 0.4),
              SpacerWidget.buildSpacer(20.0),
              Text(
                title,
                style: AppTextStyles.titleStyle,
                textAlign: TextAlign.center,
              ),
              SpacerWidget.buildSpacer(10.0),
              Text(
                description,
                textAlign: TextAlign.center,
                style: AppTextStyles.descriptionStyle,
              ),
              Spacer(),
              ElevatedButtonWidget.buildElevatedButton(
                onPressed: onPressed,
                text: buttonText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}