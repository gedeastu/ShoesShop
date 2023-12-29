import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  late List<Map<String, dynamic>> PopularProducts;
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
                          padding: const EdgeInsets.only(left: 25),
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
                padding: EdgeInsets.only(right: 25,left: 25,bottom: 10,),
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
            // title:    
            //   Container(
            //     margin: EdgeInsets.only(left: 10),
            //     child: Column(
            //       //mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text("Hallo, Alex",style: GoogleFonts.poppins(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 20,
            //           color: Colors.grey.shade200
            //         )),
            //         SizedBox(height: 5,),
            //         Text("@alexkeinn",style: GoogleFonts.poppins(
            //           color: Colors.grey.shade600,
            //           fontSize: 15,
            //         ))
            //       ],
            //     ),
            // ),
            backgroundColor: const Color.fromARGB(255, 31, 29, 43),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              height: 300,
              width: 300,
              color: Colors.blue,
              child:Container()
            ),
          ),
           SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              height: 300,
              width: 300,
              color: Colors.blue,
            ),
          ),
           SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              height: 300,
              width: 300,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
    // Scaffold(
    //   backgroundColor: Color.fromARGB(255, 31, 29, 43),
    //   appBar: AppBar(
    //     backgroundColor: Color.fromARGB(255, 31, 29, 43),
    //     foregroundColor: Colors.grey.shade200,
    //     toolbarHeight: 80,
    //     title: Container(
    //       margin: EdgeInsets.only(left: 10),
    //       child: Column(
    //         //mainAxisAlignment: MainAxisAlignment.start,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text("Hallo, Alex",style: GoogleFonts.poppins(
    //             fontWeight: FontWeight.bold,
    //             fontSize: 20
    //           )),
    //           SizedBox(height: 3,),
    //           Text("@alexkeinn",style: GoogleFonts.poppins(
    //             color: Colors.grey.shade600,
    //             fontSize: 15
    //           ))
    //         ],
    //       ),
    //     ),
    //     actions: [

    //       Container(
    //         height: 80,
    //         width: 80,
    //         margin: EdgeInsets.only(right: 10),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_rounded,size: 60,color: Colors.blueGrey.shade200,)),
    //           ],
    //         )
    //       )
    //     ],
    //   ),
    //   body: SafeArea(
    //     child: Container(
    //       padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
    //       child: Column(
    //         children: [
    //           SingleChildScrollView(
    //             scrollDirection: Axis.horizontal,
    //             child:Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 Text("Hello & Welcome",style: TextStyle(color: Colors.grey.shade200),),
    //                 Text("Hello & Welcome",style: TextStyle(color: Colors.grey.shade200),),
    //                 Text("Hello & Welcome",style: TextStyle(color: Colors.grey.shade200),),
    //                 Text("Hello & Welcome",style: TextStyle(color: Colors.grey.shade200),)
    //               ],
    //             ) ,
    //           ),
    //           CustomScrollView(
    //             slivers: [

    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}