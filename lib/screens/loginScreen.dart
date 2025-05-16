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
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Icon(Icons.arrow_back), Text("Sign up")],
              ),
            ),
            Column(
              children: [
                const Text(
                  "Sign in"
                  ,style: TextStyle(
                    fontSize: 28.4 ,
                  fontFamily: "Agrandir",
                  fontWeight: FontWeight.bold
                ),

                ),
                const Text(
                  "Welcome back! We're happy to see you.\nSign in to manage your funds securely.",
                ),
              ],
            ),
            SizedBox(height: 30)
            ,Expanded(
                flex: 2
                ,child: Container(
                  width: double.maxFinite,
                  height: 150.0
                  ,decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(15), // Adjust this value for the top-left radius
                    topRight: Radius.circular(15), // Adjust this value for the top-right radius
                  ),
                )
                  ,child: Column(
                  children: [
                    Padding(padding:EdgeInsets.all(30) ,
                      child:
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
                              width: 1.0,
                            ),
                          ),
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email_outlined),
                          filled: true,
                          fillColor: Color(0xFFf1f1f1),
                          labelStyle: TextStyle(color: Color(0xFFa6a6a6)),
                        ),
                        style: TextStyle(),
                      ),
                    )
                  ],
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
