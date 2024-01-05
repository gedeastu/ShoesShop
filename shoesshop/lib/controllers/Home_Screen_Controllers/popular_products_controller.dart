import 'package:app/models/Home_Screen_Model/promoProducts.dart';
import 'package:get/get.dart';
class PopularProductsController extends GetxController{
  var promoProductsData = <Product>[
    Product(name: "COURT VISION 2.0", price: 58.67, imageURL: "assets/image/courtVision.png", type: "Hiking",isClicked: RxBool(false)),
    Product(name: "TERREX URBAN LOW", price: 143.98, imageURL: "assets/image/courtVision.png", type: "Hiking", isClicked: RxBool(false))
  ].obs;

  void OnClick(int index){
    promoProductsData[index].isClicked.value = !promoProductsData[index].isClicked.value;
    update();
  }
}