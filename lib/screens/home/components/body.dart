import 'package:flutter/material.dart';
import 'package:medicina/components/our_products.dart';
import 'package:medicina/size_config.dart';
import 'home_header.dart';
import 'pharmacy_services.dart';
import 'top_banner.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(10)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            PharmacyServices(),
            SizedBox(height: getProportionateScreenWidth(20)),
            TopBanner(),
            SizedBox(height: getProportionateScreenWidth(10)),
            SizedBox(height: getProportionateScreenWidth(10)),
            OurProducts(),
          ],
        ),
      ),
    );
  }
}
