

import 'package:flutter/material.dart';

import 'LoginScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  autoNavigate () async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginScreen()));
  }
  @override
  void initState() {
    // ekhan theke call kora hoyece

    autoNavigate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image.asset("assets/dada.png")),
    );
  }
}



