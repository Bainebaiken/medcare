import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/screens/Splash_screen1.dart';
import 'package:medcare/widgets/walkthrough_screen_widgets.dart';


class WalkthroughScreen3 extends StatelessWidget {
  const WalkthroughScreen3({super.key});


  @override
  Widget build(BuildContext context) {
    return WalkthroughScreenWidget.buildWalkthroughScreen(
      context: context,
      imagePath: 'assets/walkthrough3.png',
      title: 'Medical Record Data Patient',
      description: 'Easily manage and access comprehensive health records, including medical history, test results, and treatment plans, all in one secure place.',
      onPressed: () => Get.to(() => const MedCareScreen()),
      buttonText: 'Start',
    );
  }
}