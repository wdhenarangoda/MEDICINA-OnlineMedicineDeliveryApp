import 'package:flutter/material.dart';
import 'package:medicina/components/theme.dart';
import 'package:medicina/screens/checkout/credit_card_model.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  //final formatCurrency = NumberFormat.simpleCurrency();

  CreditCard resultCreditCard = creditCards[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
        
       
        iconTheme: IconThemeData(
          
          color: Colors.black, //change your color here
        ),
        title: const Text('Confirm Order',style: TextStyle(color: Colors.white),),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Shipping address',
              style: headingText,
            ),
            Card(
              margin: EdgeInsets.only(top: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ravishan Sachin',
                        ),
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Change',
                              style: TextStyle(color: Colors.orange),
                            )),
                      ],
                    ),
                    Text("382/B/1, Mathara")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Prescription No: 5',
                  style: headingText,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text("Amlodipine Amlong(5 mg)"),
                SizedBox(
              width: 35,
            ),
                Text("LKR 183.30"),
               
               
              ],
            ),
            Row(
              children: [
                
                Text("Gliclazide Reclide(40 mg)"),
                SizedBox(
              width: 42,
            ),
                Text("LKR 375.25"),
                
               
              ],
            ),
            Row(
              children: [
                
                Text("One-Alpha(0.25mg)"),
                SizedBox(
              width: 80,
            ),
                Text("LKR 164.65"),
               
              ],
            ),
            Row(
              children: [
                
                Text("Kalzana Calcium(430 mg)"),
                SizedBox(
              width: 40,
            ),
               Text("LKRE 76.80"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Payment Method',
              style: headingText,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(value: true, onChanged: null),
                deliveryCard(R.icon.visaCard),
                
                
              ],
            ),
            Row(
              children:[
                Checkbox(value: false, onChanged: null),
                Container(
                  width: 240,
                  height: 30,
                child:Card(
                  child:Text("Cash on Delivery",textAlign: TextAlign.center,),
                  
                  ))]
            ),
            SizedBox(
              height: 30,
            ),
            rowOrderInfo('Order:', 100),
            rowOrderInfo('Delivery:', 100),
            rowOrderInfo('Total:', 100),
            SizedBox(
              height: 16,
            ),
            _buttonSubmitOrder()
          ],
        ),
      ),
    );
  }

  Widget rowOrderInfo(String type, double price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            type,
            style: minorText,
          ),
          Text(
            "120",
            style: textMedium,
          )
        ],
      ),
    );
  }

  Widget _buttonSubmitOrder() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          color: AppColors.orange,
          child: Text(
            'COMPLETE ORDER',
            style: whiteText,
          )),
    );
  }

  Widget deliveryCard(String icon) {
    return Expanded(
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  icon,
                  width: 200,
                  height: 30,
                ),
                Text("Credit or Debit Card")
              ],
            ),
          )),
    );
  }

  void changePayment()  {
    Navigator.pushNamed(context, RouteConstant.creditCard).then((value) {
      setState(() {
        resultCreditCard = value as CreditCard;
      });
    });
  }
}
