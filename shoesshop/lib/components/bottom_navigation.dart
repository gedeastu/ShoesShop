import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return CurvedNavigationBar(
        height: 75,
        color: Color.fromARGB(255,37, 40, 54),
        backgroundColor: Colors.transparent,
        onTap: (int index) {
          index = index;
          print(index = index);
        },
        animationDuration: Duration(milliseconds: 300),
          items: [
            Container(
              decoration: BoxDecoration(
                //color: Color.fromARGB(255,241, 240, 242,)
              ),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Icon(Icons.home,size: 30,color: index==0 ? Colors.blue : Colors.grey.shade200,),
                  Text("Home",style: TextStyle(color: Colors.blue),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Icon(Icons.chat,size: 30,color: Colors.blue,),
                  Text("Chat",style: TextStyle(color: Colors.blue,),)
                ],
              ),
            ),
             Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Icon(Icons.favorite,size: 30,color: Colors.blue,),
                  Text("Favorite",style: TextStyle(color: Colors.blue,),)
                ],
              ),
            ),
             Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Icon(Icons.account_circle,size: 30,color: Colors.blue,),
                  Text("Account",style: TextStyle(color: Colors.blue,),)
                ],
              ),
            ),
          ]
        );
  }
}