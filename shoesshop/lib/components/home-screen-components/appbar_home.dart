import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
                              const SizedBox(height: 3,),
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
                padding: const EdgeInsets.only(right: 20,left: 20,bottom: 10,),
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
                      const SizedBox(width: 20,),
                      Text("Running",style: TextStyle(color: Colors.grey.shade200)),
                      const SizedBox(width: 20,),
                      Text("Training",style: TextStyle(color: Colors.grey.shade200))
                    ],
                  ),
                ),
              )
            ),
            backgroundColor: const Color.fromARGB(255, 31, 29, 43),
        );
  }
}