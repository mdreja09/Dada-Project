import 'package:flutter/material.dart';
import 'package:untitled4/EditProfile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        margin: EdgeInsetsGeometry.only(left: 16, right: 16, top: 50),
        child: Column(
          children: [
            Image.asset("assets/profile.png", height: 80, width: 80),
            SizedBox(height: 10),
            Text(
              "MD REJA",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),

            SizedBox(height: 20),

            //Main Container

            Container(
              height: 323,
              width: 400,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [

                    // My Profile
                    Row(
                      children: [
                        InkWell(onTap: (){
                          Navigator.push(context,MaterialPageRoute(
                              builder: (context)=> Editprofile()));
                        },

                          child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xffFEF6EE8C).withOpacity(0.12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.perm_identity),
                                  Text(
                                    "Person",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //Icon(Icons.account_circle_outlined)
                      ],
                    ),

                    SizedBox(height: 7),
                    // My Order

                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffFEF6EE8C).withOpacity(0.12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.reorder_outlined),
                                Text(
                                  "My Order",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                        //Icon(Icons.account_circle_outlined)
                      ],
                    ),
                    SizedBox(height: 7),
                    //Offer Order

                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffFEF6EE8C).withOpacity(0.12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.local_fire_department),
                                Text(
                                  "Offer Order",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                        //Icon(Icons.account_circle_outlined)
                      ],
                    ),
                    SizedBox(height: 7),
                    // My Review

                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffFEF6EE8C).withOpacity(0.12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.recycling_rounded),
                                Text(
                                  "My Review",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                        //Icon(Icons.account_circle_outlined)
                      ],
                    ),
                    SizedBox(height: 7),

                    // Logout
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffFEF6EE8C).withOpacity(0.20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.logout_outlined),
                                SizedBox(width: 130,),
                                Text(
                                  "Logout",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                //Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                        //Icon(Icons.account_circle_outlined)
                      ],
                    ),

                  ],
                ),
              ),


            ),

          ],
        ),
      ),
    );
  }
}
