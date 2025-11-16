
import 'package:flutter/material.dart';

import 'Home.dart';
//import 'HomeScreen1.dart';
//import 'Homescreen1.dart';
import 'LoginRegister.dart';
import 'SplashScreen.dart';

void main (){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home()
    );
  }
}

