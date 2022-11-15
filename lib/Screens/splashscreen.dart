import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotstar/Screens/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {
    super.initState();
    Timer(
            Duration(seconds: 3),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen())));
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xFF01147C),
      body: Center(
        child: Image(image: AssetImage('assets/hotstarlogo.png'),color: Colors.white,
        height: MediaQuery.of(context).size.height*0.25,),
      ),
    );
  }
}