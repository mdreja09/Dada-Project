import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:untitled4/DataBase.dart';

import 'BottomNavigation.dart';
import 'Categories.dart';
import 'Discount.dart';
import 'ProductDetails.dart';
import 'Profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cirrentIndex =0;

  List ScreenIndex = [
    HomePageContainer(),

    //BottomNavigation(),
    Categories(),
    Discount(),
    Productdetails(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: Image.asset("assets/leading.png"),
        centerTitle: true,
        title: Image.asset("assets/dadagarments.png"),
        actions: [Icon(Icons.person, size: 33)],
      ),

      body: ScreenIndex[cirrentIndex] ,
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xffFCE9D8),
        backgroundColor: Colors.transparent,
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.chat_bubble_outline),
            label: 'Category',
          ),
          CurvedNavigationBarItem(child: Icon(Icons.search), label: 'Search'),
          CurvedNavigationBarItem(
            child: Icon(Icons.newspaper),
            label: 'Discount',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.perm_identity),
            label: 'Personal',
          ),
        ],
        onTap: (index) {
          cirrentIndex=index;
          setState(() {
            
          });



          // Handle button tap
        },
      )
      //BottomNavigation(),
    );
  }
}

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({
    super.key,
    //required this.imgList,
  });

  //final List imgList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Divider(thickness: 3, color: Colors.grey.withOpacity(0.6)),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search Product",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.tune, size: 22),
                ),
              ],
            ),
          ),

          // ************Slide use kora hoice

          Column(
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 0.8,
                  autoPlayAnimationDuration: Duration(seconds: 1),

                  height: 200.0,
                ),

                items: AllImage().imgList.map((a) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(image: NetworkImage(a)),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),

                    image: DecorationImage(
                      image: AssetImage("assets/saripora.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 90,
                  height: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/babygirls.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 90,
                  height: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/hijap.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 90,
                  height: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/babygirls.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 90,
                  height: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/babygirls.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 90,
                  height: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/girls.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),

                // ... চাইলে আরও container
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                // SizedBox(width:20 ,),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xffFF8900),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          //Best sealing

          Container(
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
          ),



          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,


              itemCount: 7,
                shrinkWrap: true,

                // Dress in Scrollrable

                itemBuilder: (context, index) => Container(
                  padding: EdgeInsetsGeometry.only(left: 10),
                  height: 156,
                  width: 179,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          "assets/hijap.png",
                          width: double.infinity,
                          height: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        child: Text(
                          "Party Borkha Abaya Koliza",

                          style: TextStyle(
                            color: Color(0xff1E1E1E),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 8, height: 5),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Text(
                              "2880",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 10, width: 8),

                          // 3200 lineThorugh
                          Text(
                            "3200",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Add to Card"),
                        ),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),


            ),
          )]
      ),
    );
  }
}
