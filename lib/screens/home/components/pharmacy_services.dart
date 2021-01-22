import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PharmacyServices extends StatelessWidget {
  const PharmacyServices({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Pharmacy/Drugstore",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PharmacyCard(
                image: "assests/images/pharmacy1.jpg",
                category: "SPC",
                press: () {},
              ),
              PharmacyCard(
                image: "assests/images/pharmacy2.png",
                category: "Healthguard",
                press: () {},
              ),
              PharmacyCard(
                image: "assests/images/pharmacy3.jpg",
                category: "George Steuart Health",
                press: () {},
              ),
              PharmacyCard(
                image: "assests/images/pharmacy4.png",
                category: "Hemas Pharmaceuti-cals",
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PharmacyCard extends StatelessWidget {
  const PharmacyCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(104),
        height: getProportionateScreenHeight(135),
        child: ClipRRect(
          //borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0XFF343434).withOpacity(0.4),
                        Color(0XFF343434).withOpacity(0.15),
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                  vertical: getProportionateScreenWidth(10),
                ),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$category",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(12),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          GestureDetector(onTap: press, child: Text("See More")),
        ],
      ),
    );
  }
}
