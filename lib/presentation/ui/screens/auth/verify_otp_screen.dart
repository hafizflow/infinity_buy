import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_buy/presentation/ui/screens/auth/complete_profile_screen.dart';
import 'package:infinity_buy/presentation/ui/widgets/app_logo.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utility/app_colors.dart';

class VerifyOTPScreen extends StatelessWidget {
  const VerifyOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 160),
              const AppLogo(height: 100),
              const SizedBox(height: 24),
              Text(
                "Enter OTP code",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 4),
              Text(
                "A 4 digit OTP code has been sent",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 24),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 55,
                  activeFillColor: Colors.transparent,
                  inactiveFillColor: Colors.transparent,
                  inactiveColor: AppColors.primaryColor,
                  selectedFillColor: Colors.transparent,
                  selectedColor: Colors.grey.shade600,
                  activeColor: Colors.teal.shade700,
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                onCompleted: (v) {
                  print("Completed");
                },
                appContext: context,
              ),
              const SizedBox(height: 08),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const CompleteProfileScreen());
                  },
                  child: const Text("Next"),
                ),
              ),
              const SizedBox(height: 24),
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(text: "This code will expire "),
                    TextSpan(
                      text: "120s",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Resend Code",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}