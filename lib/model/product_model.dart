// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  String imageURL;
  String productTitle;
  int productPrice;
  double stars;
  bool isSaved;
  String descTitle;
  String descDetail;
  List color;

  Product({
    required this.imageURL,
    required this.productTitle,
    required this.productPrice,
    required this.stars,
    required this.isSaved,
    required this.descDetail,
    required this.color,
    required this.descTitle,
  });
}
