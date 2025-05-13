import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyLoginScreen();
}

class _MyLoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xFFebb545)
        )
        ,child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Icon(Icons.arrow_back), Text("Sign up")],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start
              ,children: [
                const Text("Sign in"),
                const Text(
                  "Welcome back! We're happy to see you.\nSign in to manage your funds securely.",
                ),
              ],
            ),
            SizedBox(height: 30)
            ,Container(
              width: double.maxFinite,
              height: 150.0
              ,decoration: const BoxDecoration(
                color: Colors.white,
              )
              ,child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ), // Adjust the radius as needed
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFa6a6a6),
                          width: 2.0,
                        ),
                      ),
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                      filled: true,
                      fillColor: Color(0xFFf1f1f1),
                      hintStyle: TextStyle(color: Color(0xFFa6a6a6)),
                    ),
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
