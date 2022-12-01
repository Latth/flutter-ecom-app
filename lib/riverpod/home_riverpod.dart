import 'package:flutter/material.dart';
import 'package:flutter_lovers/assets.dart';
import 'package:flutter_lovers/model/home_products_model.dart';

import '../model/product_model.dart';

class HomeRiverpod extends ChangeNotifier {
  List<String> campaigns = [
    Assets.images.imCampaignsPNG,
    Assets.images.imCampaignsPNG,
    Assets.images.imCampaignsPNG
  ];

  int campaignsCurrentIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  setCampaignsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }

  HomeProductsModel hotDeals =
      HomeProductsModel(categoryTitle: "Hot Deals", producs: [
    Product(
      imageURL: Assets.images.imC1PNG,
      isSaved: false,
      productPrice: 1299,
      productTitle: "Apple iMac 24 (2021)",
      stars: 4.9,
      color: [Colors.cyan, Colors.deepOrange, Colors.deepPurpleAccent],
      descTitle: "Free AppleTV+ fore one year!",
      descDetail:
          " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    ),
    Product(
      imageURL: Assets.images.imW1PNG,
      isSaved: true,
      productPrice: 859,
      productTitle: "Apple Watch Version 1",
      stars: 4.7,
      color: [Colors.cyan, Colors.deepOrange, Colors.deepPurpleAccent],
      descTitle: "Free AppleTV+ fore one year!",
      descDetail:
          " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    ),
    Product(
      imageURL: Assets.images.imP1PNG,
      isSaved: false,
      productPrice: 1199,
      productTitle: "iPhone 12 Series",
      stars: 5.0,
      color: [Colors.cyan, Colors.deepOrange, Colors.deepPurpleAccent],
      descTitle: "Free AppleTV+ fore one year!",
      descDetail:
          " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    ),
  ]);
  HomeProductsModel mostPopular =
      HomeProductsModel(categoryTitle: "Most Popular", producs: [
    Product(
      imageURL: Assets.images.imC2PNG,
      isSaved: false,
      productPrice: 1299,
      productTitle: "Apple iMac 27 (2022)",
      stars: 4.8,
      color: [Colors.cyan, Colors.deepOrange, Colors.deepPurpleAccent],
      descTitle: "Free AppleTV+ fore one year!",
      descDetail:
          " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    ),
    Product(
      imageURL: Assets.images.imW2PNG,
      isSaved: false,
      productPrice: 859,
      productTitle: "Apple Watch Version 2",
      stars: 4.8,
      color: [Colors.cyan, Colors.deepOrange, Colors.deepPurpleAccent],
      descTitle: "Free AppleTV+ fore one year!",
      descDetail:
          " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    ),
    Product(
      imageURL: Assets.images.imP2PNG,
      isSaved: true,
      productPrice: 1199,
      productTitle: "iPhone 14 Series (2022)",
      stars: 4.9,
      color: [Colors.cyan, Colors.deepOrange, Colors.deepPurpleAccent],
      descTitle: "Free AppleTV+ fore one year!",
      descDetail:
          " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    ),
  ]);
}
