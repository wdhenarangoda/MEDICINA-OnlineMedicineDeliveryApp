import 'package:flutter/material.dart';
import 'components/phone_verification.dart';

class AuthScreen extends StatelessWidget {
  static String routeName = "/auth_Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Login Verification", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange[700],
      ),
      body: PhoneVerification(),
    );
  }
}
