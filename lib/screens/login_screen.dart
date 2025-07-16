import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medcare/Constants/text_styles.dart';
import 'package:medcare/constants/app_dimesions.dart';
import 'package:medcare/widgets/eleveted_button_widget.dart';
import '../Widgets/spacer_widget.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedMode = 'No Phone'; 
  final _noPhoneController = TextEditingController();
  final _emailController = TextEditingController();
  bool _isVerified = false;

  @override
  void dispose() {
    _noPhoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _handleContinue() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isVerified = true;
      });
    }
  }

  void _navigateToHome() {
    Get.off(() => const HomeScreen());
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
                  'Enter your phone number or email',
                  style: AppTextStyles.titleStyle,
                  textAlign: TextAlign.center,
                ),
                SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
                DropdownButtonFormField<String>(
                  value: _selectedMode,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  items: ['No Phone', 'Email']
                      .map((label) => DropdownMenuItem(
                            value: label,
                            child: Text(label),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedMode = value;
                    });
                  },
                ),
                SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
                if (_selectedMode == 'No Phone')
                  TextFormField(
                    controller: _noPhoneController,
                    decoration: InputDecoration(
                      labelText: 'No Phone',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a No Phone';
                      }
                      return null;
                    },
                  )
                else
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an Email';
                      }
                      return null;
                    },
                  ),
                SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 5)),
                if (_selectedMode == 'No Phone')
                  Text(
                    'Is there an issue with your phone number?',
                    style: AppTextStyles.descriptionStyle,
                  )
                else
                  Text(
                    'Is there an issue with your email?',
                    style: AppTextStyles.descriptionStyle,
                  ),
                SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
                ElevatedButtonWidget.buildElevatedButton(
                  onPressed: _isVerified ? _navigateToHome : _handleContinue,
                  text: _isVerified ? 'Continue' : 'Login',
                ),
                SpacerWidget.buildSpacer(AppDimensions.getResponsiveHeight(context, 2.5)),
                if (!_isVerified)
                  Text(
                    "Don't have a MedCare account yet? Sign up",
                    style: AppTextStyles.descriptionStyle,
                  ),
                if (_isVerified)
                  Text(
                    'Verification Success\nCongratulations, your account has been verified',
                    style: AppTextStyles.descriptionStyle,
                    textAlign: TextAlign.center,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}