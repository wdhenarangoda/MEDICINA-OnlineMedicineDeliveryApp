import 'package:flutter/material.dart';

class Shopbycategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w600 = FontWeight.w600;
    return Container(
      child: Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 25, fontWeight: w600),
        ),
      ),
    );
  }
}
