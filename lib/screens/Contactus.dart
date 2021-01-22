import 'package:flutter/material.dart';

import '../constants.dart';

class ContactusScreen extends StatefulWidget {
  @override
  _ContactusScreenState createState() => _ContactusScreenState();
}

class _ContactusScreenState extends State<ContactusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0XFF343434).withOpacity(0.4),
                        Color(0XFF343434).withOpacity(0.15),
                      ]),
                ),
      child: Scaffold(
        appBar: AppBar(
         title: Icon(Icons.arrow_back),
        ),
        body: SafeArea(
          
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0, left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
              Flexible(
                child: ListView(
                  children: <Widget>[
                    Text(
                        'Slmedicinadelivery@gmail.com',
                        style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "281/A Stanley Thilakarathna Mawatha Nugegoda",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Telephone :011 -288888"),
                    Text("Mobile: 0713668997"),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Inquiries",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Name'
  ),
),
SizedBox(
                      height: 10,
                    ),
TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Email'
  ),
),
SizedBox(
                      height: 10,
                    ),
TextField(
  
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Comments'
  ),
),
SizedBox(
                      height: 10,
                    ),
                    OutlineButton(onPressed: null,
                    child: Text("Submit", style: TextStyle(fontSize: 18),),
                    color: Colors.orange[100],  
                  textColor: Colors.white,  
                  padding: EdgeInsets.all(8.0),  
                  splashColor: Colors.grey,    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
