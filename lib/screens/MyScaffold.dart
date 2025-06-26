import 'package:beztami_ewallet_app/screens/budgetScreen.dart';
import 'package:beztami_ewallet_app/screens/goalsScreen.dart';
import 'package:beztami_ewallet_app/screens/plannedPaymentsScreen.dart';
import 'package:beztami_ewallet_app/screens/wallethomescreen.dart';
import 'package:flutter/material.dart';

import 'dashboardScreen.dart';

class MyScaffold extends StatelessWidget {
  // final String title ;
  final VoidCallback? onFabPressed;
  final Widget body;
   MyScaffold({ this.onFabPressed, required this.body});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFebb545),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Beztami',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontFamily: "Agrandir-GrandHeavy",
                ),
              ),
            ),

            //dashboard
            ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/dashboard.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Dashboard"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardScreen(),
                  ),
                );
              },
            ),
            //wallet
            ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/wallet.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Wallet"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WalletScreen(),
                  ),
                );
              },
            ),
            //budget
            ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/budget.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Budget"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BudgetScreen(),
                  ),
                );
              },
            ),
            //depts
            ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/depts.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Depts"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            //Goals
            ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/goals.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Goals"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoalsScreen(),
                  ),
                );
              },
            ),
            //planned payments
            ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/planned_payments.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Planned payments"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Plannedpaymentsscreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onFabPressed ?? () {},
        tooltip: 'Add',
        backgroundColor: Color(0xFFebb545), // Background color of the FAB
        foregroundColor: Colors.white, // Color of the icon
        child: Icon(Icons.add),
      ),
    );
  }
}
