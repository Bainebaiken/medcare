import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/controllers/controllers.dart';
import 'package:medcare/widgets/walkthrough_screen_widgets.dart';

class WalkthroughScreen1 extends StatelessWidget {
  final WalkthroughController _controller = Get.find<WalkthroughController>();

   WalkthroughScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return WalkthroughScreenWidget.buildWalkthroughScreen(
      context: context,
      imagePath: 'assets/Frame 165.png',
      title: 'Online Consultation',
      description: 'Connect with healthcare professionals virtually for convenient medical advice and support.',
      onPressed: () => _controller.nextPage(),
      buttonText: 'Next',
    );
  }
}