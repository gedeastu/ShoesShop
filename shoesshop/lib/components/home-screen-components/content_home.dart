import 'package:app/controllers/Home_Screen_Controllers/new_arrivals_controllers.dart';
import 'package:app/controllers/Home_Screen_Controllers/popular_products_controller.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class ContentHome extends StatelessWidget {
  ContentHome({super.key});
  final controller_popular_products = Get.put(PopularProductsController());
  final controller_news_arrivals = Get.put(NewArrivalsControllers());
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
          padding: EdgeInsets.all(0),
          sliver:  SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                switch (index) {
                case 0:
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20,left: 20,top: 20),
                        child: Text("Popular Products", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),)
                      ),
                      Container(
                        height: 260,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller_popular_products.promoProductsData.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 200,
                              height: double.infinity,
                              margin: EdgeInsets.only(top: 10,right: 0,left: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 241, 240, 242)
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Obx(() => 
                                  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(controller_popular_products.promoProductsData[index].imageURL),
                                    Text(controller_popular_products.promoProductsData[index].type),
                                    Text(controller_popular_products.promoProductsData[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("\$${controller_popular_products.promoProductsData[index].price}"),
                                    // ElevatedButton(onPressed: (){
                                    //   controller_popular_products.OnClick(index);
                                    // }
                                    // , child: Text("${controller_popular_products.promoProductsData[index].isClicked}"))
                                  ],
                                ))
                              ),
                            );
                          }, 
                        ),
                      ),
                    ],
                  );
                  case 1:
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20,left: 20,top: 35),
                          child: Text("News Arrivals",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
                        ),
                        Container(
                          color: Colors.amber,
                          height: double.maxFinite,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: controller_news_arrivals.arrivalData.length,
                            itemBuilder: (BuildContext context,int index) {
                              return Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(controller_news_arrivals.arrivalData[index].name, style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
                                    Text(controller_news_arrivals.arrivalData[index].type, style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
                                    Text("${controller_news_arrivals.arrivalData[index].price}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
                                    SizedBox(height: 20,)
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    );
                default:
                return 
                Container(
                  height: 100,
                  child: Text("Hello")
                );
              }
              },
              childCount: 5
              )
            ),
        );
  }
}