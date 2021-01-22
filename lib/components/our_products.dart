import 'package:flutter/material.dart';
import 'package:medicina/components/product_card.dart';
import 'package:medicina/models/products.dart';
import 'package:medicina/screens/home/components/pharmacy_services.dart';

import '../size_config.dart';

class OurProducts extends StatelessWidget {
  const OurProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Our Products",
          press: () {},
        ),
        //SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
