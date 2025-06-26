
import 'package:beztami_ewallet_app/screens/MyScaffold.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _walletscreen();

}
class _walletscreen extends State<WalletScreen>{
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        body: SingleChildScrollView(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset("assets/images/wallet.png",width: 200,height: 200,),
              Text(
                'Scan or choose photo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              // SizedBox(height: 20),
              Text(
                'Passport, driver\'s license, payment card, health insurance or other essential documents.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey, // Lighter color for descriptive text
                ),
              ),
            ],
          ),
        ),
    );
  }

}