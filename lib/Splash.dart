import 'package:flutter/material.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<StatefulWidget> createState() => _SplashState();
}


class _SplashState extends State<Splash> {
   @override
  void initState() {
    super.initState();
    _navigatetohome();

  }
   _navigatetohome() async {
     await Future.delayed(Duration(seconds: 2), () {});
     Navigator.pushReplacement(
       context,
       MaterialPageRoute(builder: (context) => MyHomePage()),
     );
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: Container(
           child: Image.asset('assets/images/waletlogo.png',width: 200,height: 200),
         ),
       ),
     );
   }

}