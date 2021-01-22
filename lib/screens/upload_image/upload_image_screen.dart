import 'package:flutter/material.dart';

import 'components/body.dart';

class UploadImageScreen extends StatelessWidget {
  static String routeName = "/upload_image";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Order Prescription", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange[700],
      ),
      body: Body(),
    );
  }
}
