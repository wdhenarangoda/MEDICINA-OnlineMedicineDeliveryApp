import 'package:flutter/material.dart';
import 'package:medicina/Help.dart';
import 'package:medicina/Logout.dart';
import 'package:medicina/My%20Wishlist.dart';
import 'package:medicina/My%20cart.dart';
import 'package:medicina/Shop%20by%20category.dart';
import 'package:medicina/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int index = 0;
  List<Widget> list = [
    Home(),
    Shopbycategory(),
    Mycart(),
    MyWishlist(),
    Help(),
    Logout()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        body: list[index],
        drawer: MyDrawer(
          onTap: (ctx, i) {
            // setState((){
            //  index=i;
            //  Navigator.pop(ctx);
            //
            // });
          },
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  MyDrawer({this.onTap});
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange[600]),
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                            backgroundImage: AssetImage('images/happy.jpg')),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Hey Waruna',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Your Location- Nugegoda',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () => onTap(context, 0),
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text('Shop by Category'),
                onTap: () => onTap(context, 1),
              ),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text('My cart'),
                onTap: () => onTap(context, 0),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('My Wishlist'),
                onTap: () => onTap(context, 2),
              ),
              ListTile(
                leading: Icon(Icons.help_center),
                title: Text('Help'),
                onTap: () => onTap(context, 0),
              ),
              Divider(
                height: 1,
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () => onTap(context, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
