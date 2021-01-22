import 'package:flutter/material.dart';
import 'package:medicina/components/default_button.dart';
import 'package:medicina/constants.dart';
import 'package:medicina/screens/upload_image/upload_image_screen.dart';

import '../../../size_config.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      width: double.infinity,
      // height: 120,
      decoration: BoxDecoration(
        color: Colors.orange,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text.rich(
                TextSpan(
                  text: "Prescripiton Services \n",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "and more...\n",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            "Upload your prescription here",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          RaisedButton(
            color: Colors.orange,
            elevation: 10,
            onPressed: () =>
                Navigator.pushNamed(context, UploadImageScreen.routeName),
            child: Text("Upload"),
          ),
        ],
      ),
    );
  }
}
