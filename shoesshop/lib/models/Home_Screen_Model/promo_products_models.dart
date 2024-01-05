import 'package:get/get.dart';
class Product{
   final String name;
   final double price;
   final String imageURL;
   final String type;
   var isClicked = false.obs;

   Product({
    required this.name,
    required this.price,
    required this.imageURL,
    required this.type,
    required this.isClicked
   });
}