import 'package:beztami/screens/OnBoarding2.dart';
import 'package:beztami/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';




class OnboardingScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(), // Top spacer
                Column(
                  children: [
                    Image.asset(
                      'assets/imagesgi/wallet.png', // Replace with your image path
                      height: 200,
                    ),
                    SizedBox(height: 32),
                    Row(
                      children: [
                        Text(
                          'Control Your\nMoney, Simply.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween
                  ,children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => WelcomeScreen()),
                        );
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                    SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => OnboardingScreen2()),
                        );
                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.arrow_forward, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
