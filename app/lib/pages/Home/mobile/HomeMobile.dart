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
        leadingWidth: 200,
        leading: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hallo, Alex",style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 20
            )),
            Text("@alexkeinn")
          ],
        ),
        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_rounded,size: 40,),alignment: Alignment.center,)
        ],
      ),
      body: SafeArea(
        child: Text("Hello and Welcome")
      ),
    );
  }
}