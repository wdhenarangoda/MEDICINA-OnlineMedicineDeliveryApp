import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "MEDICINA",
          style: TextStyle(
            fontFamily: 'Times New Roman',
            fontSize: getProportionateScreenWidth(40),
            color: Colors.white,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(365),
          width: getProportionateScreenWidth(335),
        ),
      ],
    );
  }
}
