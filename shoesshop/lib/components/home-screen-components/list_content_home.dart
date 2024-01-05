import 'package:app/controllers/Home_Screen_Controllers/new_arrivals_controllers.dart';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class ListContentHome extends StatelessWidget {
  ListContentHome({super.key});
  final controller_news_arrivals = Get.put(NewArrivalsControllers());
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          sliver:  SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: 
                  Row(
                    children: [
                      Image.asset(controller_news_arrivals.arrivalData[index].urlImage),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(controller_news_arrivals.arrivalData[index].type, style: const TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
                          Container(width: 200,child: Text(controller_news_arrivals.arrivalData[index].name, style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),)),
                          Text("\$${controller_news_arrivals.arrivalData[index].price}", style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.normal,fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                );
              },
              childCount: controller_news_arrivals.arrivalData.length
              )
            ),
        );
  }
}