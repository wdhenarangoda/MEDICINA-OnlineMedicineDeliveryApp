import 'package:flutter/material.dart';
import 'package:medicina/theme.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange[700],
      ),
      body: Body(),
    );
  }
}
