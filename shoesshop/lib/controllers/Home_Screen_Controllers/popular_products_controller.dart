import 'package:app/models/Home_Screen_Model/promo_products_models.dart';
import 'package:get/get.dart';
class PopularProductsController extends GetxController{
  var promoProductsData = <Product>[
    Product(name: "COURT VISION 2.0", price: 58.67, imageURL: "assets/image/courtVision.png", type: "Hiking",isClicked: RxBool(false)),
    Product(name: "SL 20 SHOES", price: 143.98, imageURL: "assets/image/sl20.png", type: "Hiking", isClicked: RxBool(false)),
    Product(name: "TERREX URBAN LOW", price: 143.98, imageURL: "assets/image/courtVision.png", type: "Hiking", isClicked: RxBool(false))
  ].obs;

  void OnClick(int index){
    promoProductsData[index].isClicked.value = !promoProductsData[index].isClicked.value;
    update();
  }
}