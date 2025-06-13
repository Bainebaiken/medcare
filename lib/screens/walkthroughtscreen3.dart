import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/controllers/controllers.dart';
import 'package:medcare/widgets/walkthrough_screen_widgets.dart';


class WalkthroughScreen3 extends StatelessWidget {
  final WalkthroughController _controller = Get.find<WalkthroughController>();

   WalkthroughScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return WalkthroughScreenWidget.buildWalkthroughScreen(
      context: context,
      imagePath: 'assets/Frame 165 (1).png',
      title: 'Medical Record Data Patient',
      description: 'Easily manage and access comprehensive health records, including medical history, test results, and treatment plans, all in one secure place.',
      onPressed: () => _controller.start(),
      buttonText: 'Start',
    );
  }
}