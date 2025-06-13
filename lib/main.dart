import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/screens/walkthroughScreen1.dart';
import 'package:medcare/screens/walkthroughscreen2.dart';
import 'package:medcare/screens/walkthroughtscreen3.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    initialRoute: '/splash',
    getPages: [
      GetPage(name: '/splash', page: () => SplashScreen()),
      GetPage(name: '/walkthrough1', page: () => WalkthroughScreen1()),
      GetPage(name: '/walkthrough2', page: () => WalkthroughScreen2()),
      GetPage(name: '/walkthrough3', page: () => WalkthroughScreen3()),
    ],
  ));
}