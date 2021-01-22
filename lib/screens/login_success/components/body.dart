import 'package:flutter/material.dart';
import 'package:medicina/components/default_button.dart';
import 'package:medicina/screens/home/home_screen.dart';
import 'package:medicina/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0),
        Text(
          "Login Successfully",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(25),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Image.asset(
          "assests/images/success.png",
          height: SizeConfig.screenHeight * 0.5, // 50%
        ),
        Image.asset(
          "assests/images/success2.png",
          height: SizeConfig.screenHeight * 0.15, // 10%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.01),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
