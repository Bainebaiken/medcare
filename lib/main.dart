import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/Screens/splash_screen.dart';
import 'package:medcare/Screens/otp_email_screen.dart';
import 'package:medcare/Screens/otp_phone_screen.dart';
import 'package:medcare/controllers/controllers.dart';
import 'package:medcare/screens/Splash_screen1.dart';
import 'package:medcare/screens/home_screen.dart';
import 'package:medcare/screens/login_screen.dart';
import 'package:medcare/screens/register/email_register_screen.dart';
import 'package:medcare/screens/register/no_phone_register_screen.dart';
import 'package:medcare/screens/service_screen.dart';
import 'package:medcare/screens/walkthroughScreen1.dart';
import 'package:medcare/screens/walkthroughscreen2.dart';
import 'package:medcare/screens/walkthroughtscreen3.dart';

void main() {
  
  Get.put(WalkthroughController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: '/homescreen',
      getPages: [
        GetPage(name: '/splash', page: () => const SplashScreen()),
        GetPage(name: '/walkthrough1', page: () =>  WalkthroughScreen1()),
        GetPage(name: '/walkthrough2', page: () =>  WalkthroughScreen2()),
        GetPage(name: '/walkthrough3', page: () => const WalkthroughScreen3()),
        GetPage(name: '/noPhoneRegister', page: () => const NoPhoneRegisterScreen()),
        GetPage(name: '/emailRegister', page: () => const EmailRegisterScreen()),
        GetPage(name: '/otpEmail', page: () => const OTPEmailScreen(email: '',)),
        GetPage(name: '/otpPhone', page: () => const OTPPhoneScreen(phone: '',)),
        GetPage(name: '/secondSplash', page: () => const MedCareScreen()),
        GetPage(name: '/service', page: () => const ServicesScreen()),
        GetPage(name: '/homescreen', page: () => const HomeScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
      ],
    );
  }
}