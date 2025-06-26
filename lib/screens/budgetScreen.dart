import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyScaffold.dart';

class BudgetScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _budgetScreenState();
}
class _budgetScreenState extends State<BudgetScreen>{
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
              'Create Budgets',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            // SizedBox(height: 20),
            Text(
              'Visualize and manage your \n spending with ease.',
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