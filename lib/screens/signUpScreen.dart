
import 'package:beztami_ewallet_app/screens/dashboardScreen.dart';
import 'package:beztami_ewallet_app/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  bool _agreeToTerms = false;
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFFFFC043)),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                // decoration: BoxDecoration(color: Color(0xFFFFC043)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomeScreen(),
                              ),
                            );
                          },
                          child: Icon(Icons.arrow_back, color: Colors.black),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Sign in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Welcome back! We're happy to see you.\nSign in to manage your funds securely.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    // border: Border.all(color: Colors.grey, width: 0.5),
                  ),

                  child: ListView(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20),
                          buildCustomTextField(
                            labelText: "Username",
                            prefixIcon: Icons.person_2_outlined,
                          ),
                          SizedBox(height: 20),
                          buildCustomTextField(
                            labelText: "Email",
                            prefixIcon: Icons.email_outlined,
                          ),
                          SizedBox(height: 20),
                          _buildTextFieldwithprefix(
                            labelText: "Password",
                            prefixIcon: Icons.lock_outline,
                            suffixIcon: Icons.visibility_outlined,
                          ),
                          SizedBox(height: 20),
                          _buildTextFieldwithprefix(
                            labelText: "Confirm Password",
                            prefixIcon: Icons.lock_open_outlined,
                            suffixIcon: Icons.visibility_outlined,
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              children: [
                                Checkbox(
                                  value: _agreeToTerms,
                                  onChanged: (value) {
                                    setState(() {
                                      _agreeToTerms = value ?? false;
                                    });
                                  },
                                ),
                                Text(
                                  "I accept the terms and services",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 16),
                              minimumSize: Size(double.infinity, 0),
                            ),
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("or", style: TextStyle(fontSize: 14)),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Your button action here
                                  print('Image button tapped!');
                                },
                                child: Image.asset(
                                  'assets/images/google.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              SizedBox(width: 30),
                              GestureDetector(
                                onTap: () {
                                  // Your button action here
                                  print('Image button tapped!');
                                },
                                child: Image.asset(
                                  'assets/images/facebook.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ],
                          ),
                        ],
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

  Widget _buildTextFieldwithprefix({
    required String labelText,
    required IconData prefixIcon,
    IconData? suffixIcon,
  }) {
    return TextField(
      obscureText: _obscurePassword,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          color: Color(0xFFa6a6a6),
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: Icon(prefixIcon, color: Color(0xFFb7b7b7)),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscurePassword = !_obscurePassword;
            });
          },
          child: Icon(
            _obscurePassword ? Icons.visibility_off : Icons.visibility,
            color: Color(0xFFb7b7b7),
          ),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Color(0xFFf1f1f1),
      ),
    );
  }

  Widget buildCustomTextField({
    required String labelText,
    required IconData prefixIcon,
  }) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          color: Color(0xFFa6a6a6),
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: Icon(prefixIcon, color: Color(0xFFb7b7b7)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Color(0xFFf1f1f1),
      ),
    );
  }
}
