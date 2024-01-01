import 'package:app/models/Home_Screen_Model/promoProducts.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
//import 'package:hive/hive.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  List<Product> promoProductsData = [
    Product(name: "COURT VISION 2.0", price: 58.67, imageURL: "assets/image/courtVision.png", type: "Hiking"),
    Product(name: "TERREX URBAN LOW", price: 143.98, imageURL: "assets/image/courtVision.png", type: "Hiking")
  ];
  bool isLoading = false;
  //reference box
  // final _box = Hive.box('box');
  //
  // //navigation link
  // void navigationLinkData(){
  //   _box.put(1, 'All Shoes');
  //   print(_box.get(1));
  // }
  //
  // //popularData
  // void popularData(){
  //
  // }
  //
  // //newArrivalsData
  // void newArrivalsData(){
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 170,
            collapsedHeight: 80,
            //backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(
            background:
                SafeArea(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top:25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hallo, Alex",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.grey.shade200
                              )),
                              SizedBox(height: 3,),
                              Text("@alexkeinn",style: GoogleFonts.poppins(
                                color: Colors.grey.shade600,
                                fontSize: 17,
                              ))
                            ],
                          ),
                        ),
                        MaterialButton(
                          shape: const CircleBorder(),
                          onPressed: () {  },
                          child: const Icon(Icons.account_circle_rounded,size: 65,color: Colors.white,)
                        )
                      ],
                    ),
                  ),
                ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0), 
              child: Container(
                padding: EdgeInsets.only(right: 20,left: 20,bottom: 10,),
                width: double.maxFinite,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue, 
                          borderRadius: BorderRadius.circular(10)
                        ),
                        //padding: const EdgeInsets.all(5),
                        child: MaterialButton(
                          onPressed: () {

                          },
                          child: const Text("All Shoes",style: TextStyle(color: Colors.white),),
                        )
                      ),
                      const SizedBox(width: 10,),
                      Text("Heloo",style: TextStyle(color: Colors.grey.shade200)),
                      const SizedBox(width: 10,),
                      Text("Heloo",style: TextStyle(color: Colors.grey.shade200))
                    ],
                  ),
                ),
              )
            ),
            backgroundColor: const Color.fromARGB(255, 31, 29, 43),
          ),
          SingleChildScrollView(
            child: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  
                },
              )
            ),
          )
        ],
      ),
    );
  }
}