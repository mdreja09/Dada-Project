import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Color(0xffF6F6F6),

          child: Image.asset("assets/share.png", height: 22, width: 22),
        ),
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: CircleAvatar(
              backgroundColor: Color(0xffF6F6F6),
              child: Icon(Icons.notification_add_outlined, color: Colors.amber),
            ),
          ),
        ],
      ),

      // Puro page k Size theke 16 kore margin deoya hoice..
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Divider(thickness: 3, color: Colors.grey),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),

              // Search Box
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 170,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color(0xffFFF9F4),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Women’s 2",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "380 Items",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  //
                  //
                  // *******222222222222222
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 80,
                            width: 170,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Color(0xffFFF9F4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Women’s ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "140 Items",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //********* 333333333333333
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 170,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Color(0xffFFF9F4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Party Abaya",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "380 Items",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 16),

                        // ******* 44444444444
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 170,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFF9F4),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Embroidery Anaaya",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "140 Items",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
