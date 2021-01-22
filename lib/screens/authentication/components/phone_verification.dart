import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medicina/components/custom_surffix_icon.dart';
import 'package:medicina/screens/upload_image/components/body.dart';

class PhoneVerification extends StatefulWidget {
  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  String smsCode;
  String verificationCode;
  String number;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 10),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "Enter your Phone Number",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(
                  onChanged: (val) {
                    number = val;
                  },
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    hintText: "Enter your phone number",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon:
                        CustomSurffixIcon(svgIcon: "assests/icons/Phone.svg"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 16.0),
                  margin: const EdgeInsets.only(
                      top: 30, left: 20.0, right: 20.0, bottom: 20.0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [orange, orange],
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: FlatButton(
                    onPressed: () {
                      _submit();
                    },
                    child: Text(
                      "Send Code",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _submit() async {
    final PhoneVerificationCompleted verificationSuccess =
        (AuthCredential credential) {
      setState(() {
        print("Verification");
        print(credential);
      });
    };

    final PhoneVerificationFailed phoneVerificationFailed =
        (AuthException exception) {
      print("${exception.message}");
    };
    final PhoneCodeSent phoneCodeSent = (String verId, [int forceCodeResend]) {
      this.verificationCode = verId;
      smsCodeDialog(context).then((value) => print("Signed In"));
    };

    final PhoneCodeAutoRetrievalTimeout autoRetrievalTimeout = (String verId) {
      this.verificationCode = verId;
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: this.number,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verificationSuccess,
        verificationFailed: phoneVerificationFailed,
        codeSent: phoneCodeSent,
        codeAutoRetrievalTimeout: autoRetrievalTimeout);
  }

  Future<bool> smsCodeDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Enter Code",
              style: TextStyle(
                color: Colors.orange[900],
              ),
            ),
            content: TextField(
              onChanged: (Value) {
                smsCode = Value;
              },
            ),
            contentPadding: EdgeInsets.all(10),
            actions: <Widget>[
              FlatButton(
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      color: Colors.orange[900],
                    ),
                  ),
                  onPressed: () {}
                  //   FirebaseAuth.instance.currentUser().then((user) {
                  //     if (user != null) {
                  //       Navigator.of(context).pop();
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => HomeScreen()),
                  //       );
                  //     } else {
                  //       Navigator.of(context).pop();
                  //       signIn();
                  //     }
                  //   });
                  )
            ],
          );
        });
  }

  // // signIn() {
  // //   AuthCredential phoneAuthCredential = PhoneAuthProvider.getCredential(
  // //       verificationId: verificationCode, smsCode: smsCode);
  // //   FirebaseAuth.instance
  // //       .signInWithCredential(phoneAuthCredential)
  // //       // // .then((user) => Navigator.push(
  // //       // //       context,
  // //       // //       MaterialPageRoute(builder: (context) => LoginSuccessScreen()),
  // //       //     ))
  // //       // .catchError((e) => print(e));
  // }
}
