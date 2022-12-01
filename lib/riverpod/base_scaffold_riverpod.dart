import 'package:flutter/material.dart';
import 'package:flutter_lovers/assets.dart';
import 'package:flutter_lovers/view/category.dart';
import 'package:flutter_svg/svg.dart';

import '../model/bottom_navbar_model.dart';
import '../view/cart.dart';
import '../view/home.dart';
import '../view/profile.dart';
import '../view/wishlist.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavbarModel> bottomNavbarItems = [
    BottomNavbarModel(
      navIconPath: Assets.icons.icBottomHomeSVG,
      title: "Home",
    ),
    BottomNavbarModel(
      navIconPath: Assets.icons.icBottomSaveSVG,
      title: "Wishlist",
    ),
    BottomNavbarModel(
      navIconPath: Assets.icons.icBottomCategoriesSVG,
      title: "Category",
    ),
    BottomNavbarModel(
      navIconPath: Assets.icons.icBottomProfileSVG,
      title: "Profile",
    ),
    BottomNavbarModel(
      navIconPath: Assets.icons.icBottomCartSVG,
      title: "Cart",
    ),
  ];

  int bottomNavbarCurrentIndex = 0;

  void setNewIndex(int newCurrentIndex) {
    bottomNavbarCurrentIndex = newCurrentIndex;

    notifyListeners();
  }

  Widget changeBody() {
    switch (bottomNavbarCurrentIndex) {
      case 0:
        return Home();
      case 1:
        return Wishlist();
      case 2:
        return Category();
      case 3:
        return Profile();
      case 4:
        return Cart();

      default:
        return Home();
    }
  }
}
