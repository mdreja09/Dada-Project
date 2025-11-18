
import 'package:flutter/material.dart';

import 'BottomNavigation.dart';
import 'Categories.dart';
import 'Discount.dart';
import 'EditProfile.dart';
import 'Home.dart';
//import 'HomeScreen1.dart';
//import 'Homescreen1.dart';
import 'LoginRegister.dart';
import 'Profile.dart';
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
        home: Editprofile()
    );
  }
}

