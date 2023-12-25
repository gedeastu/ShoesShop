import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 29, 43),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 29, 43),
        foregroundColor: Colors.grey.shade200,
        toolbarHeight: 80,
        title: Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hallo, Alex",style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20
              )),
              SizedBox(height: 3,),
              Text("@alexkeinn",style: GoogleFonts.poppins(
                color: Colors.grey.shade600,
                fontSize: 15
              ))
            ],
          ),
        ),
        actions: [

          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_rounded,size: 60,color: Colors.blueGrey.shade200,)),
              ],
            )
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                    Text("Hello & Welcome",style: TextStyle(color: Colors.grey.shade200),),
                    Text("Hello & Welcome",style: TextStyle(color: Colors.grey.shade200),),
                    Text("Hello & Welcome",style: TextStyle(color: Colors.grey.shade200),),
                    Text("Hello & Welcome",style: TextStyle(color: Colors.grey.shade200),)
                  ],
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}