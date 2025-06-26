import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyScaffold.dart' show MyScaffold;

class DeptScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _deptScreenState();

}
class _deptScreenState extends State<DeptScreen>{
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
              'Add planned payments',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            // SizedBox(height: 20),
            Text(
              'Visualize your upcoming bills \nand track their status effortlessly.',
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