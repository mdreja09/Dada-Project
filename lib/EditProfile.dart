import 'package:flutter/material.dart';
import 'package:intl_mobile_field/intl_mobile_field.dart';

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


      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile Information",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 13),

              Text("Name",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),

              //TextField use
              SizedBox(height: 13),


              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              //Mobile Number Text
              SizedBox(height: 13),

              Text("Mobile Number",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),

              //Mobile Number Country
              SizedBox(height: 13),

              IntlMobileField(
                initialCountryCode: 'BD', // initial Country is Bangladesh
                languageCode: "en", // initial language is English
                decoration: const InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                disableLengthCounter: true,
              ),









            ],
          ),
        ),

      ),

    );
  }
}
