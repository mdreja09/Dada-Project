import 'package:flutter/material.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // nise Devider
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(height: 2, color: Colors.grey),
        ),
        leading: Card(
          margin: EdgeInsets.all(10),
          color: Color(0xffF6F6F6).withOpacity(0.8),
          child: Image.asset("assets/shareback.png"),
        ),
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),


    );
  }
}
