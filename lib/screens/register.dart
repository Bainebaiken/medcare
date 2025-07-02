import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/Constants/text_styles.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/widgets/eleveted_button_widget.dart';
import '../Widgets/spacer_widget.dart';
import 'otp_email_screen.dart';
import 'otp_phone_screen.dart';
import 'login_screen.dart'; 

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isPhoneSelected = true;
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _dobController = TextEditingController();
  String? _gender;

  @override
  void dispose() {
    _phoneController.dispose();
    _emailController.dispose();
    _fullNameController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppDimensions.basePadding),
          child: Form(
            key: _formKey,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => setState(() => isPhoneSelected = true),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isPhoneSelected ? Colors.blue : Colors.grey,
                      ),
                      child: Text('No Phone'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => setState(() => isPhoneSelected = false),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: !isPhoneSelected ? Colors.blue : Colors.grey,
                      ),
                      child: Text('Email'),
                    ),
                  ],
                ),
                SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
                if (isPhoneSelected)
                  TextField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: 'No Phone',
                      border: OutlineInputBorder(),
                    ),
                  )
                else
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
                TextField(
                  controller: _fullNameController,
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
                  value: _gender,
                  items: ['Male', 'Female', 'Other']
                      .map((label) => DropdownMenuItem(
                            value: label,
                            child: Text(label),
                          ))
                      .toList(),
                  onChanged: (value) => setState(() => _gender = value),
                ),
                SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
                TextField(
                  controller: _dobController,
                  decoration: InputDecoration(
                    labelText: 'Date of birth',
                    border: OutlineInputBorder(),
                  ),
                ),
                SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 5)),
                ElevatedButtonWidget.buildElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (isPhoneSelected) {
                        Get.to(() => OTPPhoneScreen(phone: _phoneController.text));
                      } else {
                        Get.to(() => OTPEmailScreen(email: _emailController.text));
                      }
                    }
                  },
                  text: 'Register',
                ),
                SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
                TextButton(
                  onPressed: () {
                    Get.to(() => LoginScreen());
                  },
                  child: Text(
                    'Already have an account? Click to log in',
                    style: AppTextStyles.descriptionStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

