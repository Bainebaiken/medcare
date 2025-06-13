import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/controllers/controllers.dart';
import 'package:medcare/widgets/walkthrough_screen_widgets.dart';


class WalkthroughScreen2 extends StatelessWidget {
  final WalkthroughController _controller = Get.find<WalkthroughController>();

  WalkthroughScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return WalkthroughScreenWidget.buildWalkthroughScreen(
      context: context,
      imagePath: 'assets/Auto Layout Vertical.png',
      title: '24 Hours Ready to Serve',
      description: 'Instant access to expert medical assistance. Get the care you need, when you need it.',
      onPressed: () => _controller.nextPage(),
      buttonText: 'Next',
    );
  }
}