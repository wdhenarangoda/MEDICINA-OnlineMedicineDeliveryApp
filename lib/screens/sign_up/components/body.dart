import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medicina/components/custom_surffix_icon.dart';
import 'package:medicina/components/default_button.dart';
import 'package:medicina/components/form_error.dart';
import 'package:medicina/components/social_card.dart';
import 'package:medicina/constants.dart';
import 'package:medicina/size_config.dart';

import 'sign_up_form.dart';

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
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: SizeConfig.screenHeight * 0.05), // 8% of total height
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assests/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assests/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assests/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              // Text( "By creating an account, you agree to the MEDICINA \n Terms of Service and Privacy Policy.", textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
