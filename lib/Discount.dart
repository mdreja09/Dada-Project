import 'package:flutter/material.dart';

class Discount extends StatefulWidget {
  const Discount({super.key});

  @override
  State<Discount> createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      // Puro page take 18 margin kora hoice
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            //devider use korci appBar er nise
            Divider(
              thickness: 3,
              height: 1,
              color: Colors.grey,
              radius: BorderRadius.circular(10),
            ),
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

                  //ekhane Container er vitor Tune nici
                  Container(
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.tune, size: 22),
                  ),

                  // Eitai apnar Flexible widget-er inner part. Ami eta-ke Container diye shuru korlam
                  // jate border ar size thik thake.

                ],
              ),
            ),
            //////////////////////////////////////////////////////
            ///////////////////// CARD USE  ////////////////////////
            ////////////////////////////////////
            // ekhane Scroll korar jnno
           Expanded(
             child: SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child: ListView.builder(
                 scrollDirection: Axis.vertical,
                   itemCount: 10,
                   shrinkWrap: true,

                   ////// Main Row ////////////////
                   //////////////////////
                   itemBuilder: (context , index)=> Row(
                 children: [
                   Card(
                     // Card use kora holo chobi-r moto rounded corner ar shadow dewar jonne
                     elevation: 3,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: SizedBox(
                       width: 175, // Duto item pashe rakhar jonne fixed width
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start, // Left align
                         children: [
                           // 1. Image and 'OFFER' Tag (Stack for overlay)
                           Stack(
                             children: [
                               // Image with rounded corners only at the top
                               ClipRRect(
                                 borderRadius: const BorderRadius.only(
                                   topLeft: Radius.circular(10),
                                   topRight: Radius.circular(10),
                                 ),
                                 child: Image.asset(
                                   "assets/redhijab.png", // Apnar asset path
                                   width: double.infinity,
                                   height: 160,
                                   fit: BoxFit.cover,
                                 ),
                               ),
                               // 'OFFER' Tag (Red Corner with diagonal cut)
                               Positioned(
                                 top: 0,
                                 left: 0,
                                 // Custom clipper use kora holo chobi-r moto diagonal cut shape dewar jonne
                                 child: ClipPath(
                                   //clipper: _CustomOfferClipper(),
                                   child: Container(
                                     padding: const EdgeInsets.only(
                                       top: 4,
                                       left: 4,
                                       right: 10,
                                       bottom: 4,
                                     ),
                                     color: Colors.red,
                                     child: const Text(
                                       'OFFER',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 10,
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),

                           // 2. Title
                           const Padding(
                             padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                             child: Text(
                               "Party Borkha Abaya Koliza",
                               style: TextStyle(
                                 color: Color(0xff1E1E1E),
                                 fontWeight: FontWeight.w700,
                                 fontSize: 12,
                               ),
                               maxLines: 1,
                               overflow: TextOverflow.ellipsis,
                             ),
                           ),

                           // 3. Price Row
                           const Padding(
                             padding: EdgeInsets.only(
                               left: 8,
                               right: 8,
                               top: 4,
                               bottom: 8,
                             ),
                             child: Row(
                               children: [
                                 Text(
                                   "2880",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                                 SizedBox(width: 8),

                                 // 3200 lineThorugh
                                 Text(
                                   "3200",
                                   style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     decoration: TextDecoration.lineThrough,
                                     fontSize: 14,
                                     color: Colors.grey,
                                   ),
                                 ),
                               ],
                             ),
                           ),

                           // 4. "Add To Cart" Button
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 8,
                               right: 8,
                               bottom: 8,
                             ),
                             child: SizedBox(
                               width: double.infinity, // Button strech korar jonne
                               height: 35,
                               child: OutlinedButton(
                                 onPressed: () {},
                                 style: OutlinedButton.styleFrom(
                                   padding: EdgeInsets.zero,
                                   side: const BorderSide(
                                     color: Colors.grey,
                                     width: 1.0,
                                   ), // Grey border
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(4.0),
                                   ),
                                 ),
                                 child: const Text(
                                   "Add To Cart",
                                   style: TextStyle(
                                     fontSize: 12,
                                     color: Color(0xff1E1E1E),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   ////////////////////////////
                   //////////////////////////
                   ////////
                   SizedBox(width: 20,height: 20,),
                   //////////////////////
                   ///////////////////////

                   Card(
                     // Card use kora holo chobi-r moto rounded corner ar shadow dewar jonne
                     elevation: 3,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: SizedBox(
                       width: 175, // Duto item pashe rakhar jonne fixed width
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start, // Left align
                         children: [
                           // 1. Image and 'OFFER' Tag (Stack for overlay)
                           Stack(
                             children: [
                               // Image with rounded corners only at the top
                               ClipRRect(
                                 borderRadius: const BorderRadius.only(
                                   topLeft: Radius.circular(10),
                                   topRight: Radius.circular(10),
                                 ),
                                 child: Image.asset(
                                   "assets/hijap.png", // Apnar asset path
                                   width: double.infinity,
                                   height: 160,
                                   fit: BoxFit.cover,
                                 ),
                               ),
                               // 'OFFER' Tag (Red Corner with diagonal cut)
                               Positioned(
                                 top: 0,
                                 left: 0,
                                 // Custom clipper use kora holo chobi-r moto diagonal cut shape dewar jonne
                                 child: ClipPath(
                                   //clipper: _CustomOfferClipper(),
                                   child: Container(
                                     padding: const EdgeInsets.only(
                                       top: 4,
                                       left: 4,
                                       right: 10,
                                       bottom: 4,
                                     ),
                                     color: Colors.red,
                                     child: const Text(
                                       'OFFER',
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 10,
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),

                           // 2. Title
                           const Padding(
                             padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                             child: Text(
                               "Party Borkha Abaya Koliza",
                               style: TextStyle(
                                 color: Color(0xff1E1E1E),
                                 fontWeight: FontWeight.w700,
                                 fontSize: 12,
                               ),
                               maxLines: 1,
                               overflow: TextOverflow.ellipsis,
                             ),
                           ),

                           // 3. Price Row
                           const Padding(
                             padding: EdgeInsets.only(
                               left: 8,
                               right: 8,
                               top: 4,
                               bottom: 8,
                             ),
                             child: Row(
                               children: [
                                 Text(
                                   "2880",
                                   style: TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                                 SizedBox(width: 8),

                                 // 3200 lineThorugh
                                 Text(
                                   "3200",
                                   style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     decoration: TextDecoration.lineThrough,
                                     fontSize: 14,
                                     color: Colors.grey,
                                   ),
                                 ),
                               ],
                             ),
                           ),

                           // 4. "Add To Cart" Button
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 8,
                               right: 8,
                               bottom: 8,
                             ),
                             child: SizedBox(
                               width: double.infinity, // Button strech korar jonne
                               height: 35,
                               child: OutlinedButton(
                                 onPressed: () {},
                                 style: OutlinedButton.styleFrom(
                                   padding: EdgeInsets.zero,
                                   side: const BorderSide(
                                     color: Colors.grey,
                                     width: 1.0,
                                   ), // Grey border
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(4.0),
                                   ),
                                 ),
                                 child: const Text(
                                   "Add To Cart",
                                   style: TextStyle(
                                     fontSize: 12,
                                     color: Color(0xff1E1E1E),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
               )),
             ),
           )
          ],
        ),
      ),
    );
  }
}

//class _CustomOfferClipper {}
