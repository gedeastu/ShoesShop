import 'package:app/components/home-screen-components/appbar_home.dart';
import 'package:app/components/home-screen-components/list_content_home.dart';
import 'package:app/controllers/Home_Screen_Controllers/popular_products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeMobile extends StatelessWidget {
  HomeMobile({super.key});
  final controller_popular_products = Get.put(PopularProductsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),
      body: CustomScrollView(
        slivers: [
        AppBarHome(),
        SliverToBoxAdapter(
          child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 20,left: 20,top: 20),
                        child: Text("Popular Products", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),)
                      ),
                      Container(
                        height: 270,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: ListView.builder(
                          padding: const EdgeInsets.only(left: 20),
                          scrollDirection: Axis.horizontal,
                          itemCount: controller_popular_products.promoProductsData.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 20,top: 20,),
                              width: 200,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 241, 240, 242)
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Obx(() => 
                                  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(controller_popular_products.promoProductsData[index].imageURL,fit: BoxFit.contain,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(controller_popular_products.promoProductsData[index].type,style: const TextStyle(fontSize: 15),),
                                        const SizedBox(height: 7,),
                                        Text(controller_popular_products.promoProductsData[index].name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17,)),
                                        const SizedBox(height: 7,),
                                        Text("\$${controller_popular_products.promoProductsData[index].price}",style: TextStyle(color: Colors.blue),),
                                      ],
                                    ),
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
                  ),
        ),
        SliverToBoxAdapter(
          child: const Padding(
                padding: EdgeInsets.only(right: 20,left: 20,top: 35, bottom: 20),
                child: Text("News Arrivals",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
              ),
        ),
        ListContentHome()
        ],
      ),
    );
  }
}
