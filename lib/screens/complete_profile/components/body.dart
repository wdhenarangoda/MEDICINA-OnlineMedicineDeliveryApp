import 'package:flutter/material.dart';
import 'package:medicina/components/custom_surffix_icon.dart';
import 'package:medicina/components/default_button.dart';
import 'package:medicina/components/form_error.dart';
import 'package:medicina/constants.dart';
import 'package:medicina/size_config.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              // Text(
              //   "Complete your details or continue \n with social media",
              //   textAlign: TextAlign.center,
              // ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(25)),
              Text(
                "By creating an account, you agree to the MEDICINA \n Terms of Service and Privacy Policy.",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
