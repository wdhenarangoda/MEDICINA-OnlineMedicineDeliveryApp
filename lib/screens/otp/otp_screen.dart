import 'package:flutter/material.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("OTP Authentication", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange[700],
      ),
      body: Body(),
    );
  }
}
