import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardScreen();
}

class _DashboardScreen extends State<DashboardScreen> {
  double _balance = 4000.5;
  String _name = "Heba";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Builder(
      //     builder: (context) {
      //       return IconButton(
      //         onPressed: () {
      //           Scaffold.of(context).openDrawer();
      //         },
      //         icon: const Icon(Icons.menu),
      //       );
      //     },
      //   ),
      // ),
      // //
      // drawer: Drawer(
      //   backgroundColor: Color(0xFFebb545),
      //
      //   child: ListView(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(16.0),
      //         child: Text(
      //           'Beztami',
      //           style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 28,
      //             fontFamily: "Agrandir-GrandHeavy",
      //           ),
      //         ),
      //       ),
      //
      //       //dashboard
      //       ListTile(
      //         leading: Container(
      //           width: 30,
      //           height: 30,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/dashboard.png'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         title: Text("Dashboard"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       //wallet
      //       ListTile(
      //         leading: Container(
      //           width: 30,
      //           height: 30,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/wallet.png'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         title: Text("Wallet"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       //budget
      //       ListTile(
      //         leading: Container(
      //           width: 30,
      //           height: 30,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/budget.png'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         title: Text("Budget"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       //depts
      //       ListTile(
      //         leading: Container(
      //           width: 30,
      //           height: 30,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/depts.png'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         title: Text("Depts"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       //Goals
      //       ListTile(
      //         leading: Container(
      //           width: 30,
      //           height: 30,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/goals.png'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         title: Text("Goals"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       //planned payments
      //       ListTile(
      //         leading: Container(
      //           width: 30,
      //           height: 30,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/planned_payments.png'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         title: Text("Planned payments"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // body: ListView(
      //   children: [
      //     Container(
      //       padding: EdgeInsets.all(16.0),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text(
      //             "Welcome $_name 👋 ",
      //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //           ),
      //           SizedBox(height: 8),
      //           Container(
      //             padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      //             decoration: BoxDecoration(
      //               color: Color(0xFFFFC043),
      //               borderRadius: BorderRadius.circular(20),
      //             ),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Column(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       "Current balance",
      //                       style: TextStyle(fontSize: 15),
      //                     ),
      //                     Text(
      //                       "$_balance DH",
      //                       style: TextStyle(
      //                         fontWeight: FontWeight.w700,
      //                         fontSize: 20,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 IconButton(
      //                   onPressed: () {},
      //                   icon: Icon(Icons.exposure_plus_1_outlined),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Text("Upcoming payment"),
      //               TextButton(
      //                 onPressed: () {},
      //                 child: Text("see all", style: TextStyle(fontSize: 10)),
      //               ),
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               PaymentCard(service: "Canva Premium", amount: "30 DH/month", daysLeft: "2 days left"),
      //             ],
      //           )
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  final String service;
  final String amount;
  final String daysLeft;

  const PaymentCard({
    required this.service,
    required this.amount,
    required this.daysLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple[200],
      // margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(service, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(amount, style: TextStyle(fontSize: 14)),
            Text(daysLeft, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
