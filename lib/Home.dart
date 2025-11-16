import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.segment_outlined,size: 30),
        centerTitle: true,
        title: Image.asset("assets/picture.png"),
        actions: [
          Icon(Icons.perm_identity)
        ],
      ),
      body: Column(
        children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search Products",
                  prefix: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1)
                  ),


                ),
              )

            ],



      ),

    );
  }
}
