class Product{
   final String name;
   final double price;
   final String imageURL;
   final String type;
   bool isClicked;

   Product({
    required this.name,
    required this.price,
    required this.imageURL,
    required this.type,
    this.isClicked = false
   });
}