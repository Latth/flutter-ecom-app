import 'package:flutter/material.dart';

import 'package:flutter_lovers/components/custom_appbar.dart';
import 'package:flutter_lovers/components/product_card.dart';
import 'package:flutter_lovers/constant/constant.dart';
import 'package:flutter_lovers/model/home_products_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import '../riverpod/home_riverpod.dart';

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverpod());

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverpod);
    var read = ref.read(homeRiverpod);
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        children: [
          campaigns(read, watch),
          spaceH20(),
          homeProductCategories(read.hotDeals),
          homeProductCategories(read.mostPopular)
        ],
      ),
    );
  }

  Widget homeProductCategories(HomeProductsModel model) {
    return Column(
      children: [
        Padding(
          padding: [20, 40, 20, 0].paddingLTRB,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.categoryTitle,
                style: Constant.homeProductCategoriesTitleStyle,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See All",
                    style: Constant.homeProductCategoriesSeeAllButtonStyle,
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 270,
          child: ListView.separated(
            padding: [20, 10, 20, 10].paddingLTRB,
            itemCount: model.producs.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return ProductCard(product: model.producs[index]);
            }),
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 20,
              );
            },
          ),
        )
      ],
    );
  }

  SizedBox campaigns(HomeRiverpod read, HomeRiverpod watch) {
    return SizedBox(
      height: 210,
      child: Stack(
        children: [
          campaignsPageView(read, watch),
          Align(
            alignment: Alignment.bottomCenter,
            child: campaignsDot(read, watch),
          ),
        ],
      ),
    );
  }

  Row campaignsDot(HomeRiverpod read, HomeRiverpod watch) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < read.campaigns.length; i++)
          Padding(
            padding: 10.onlyBottomP,
            child: Container(
              width: 10,
              height: 10,
              margin: 3.allP,
              decoration: BoxDecoration(
                color: watch.campaignsCurrentIndex == i
                    ? Constant.white
                    : Constant.white.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
          )
      ],
    );
  }

  PageView campaignsPageView(HomeRiverpod read, HomeRiverpod watch) {
    return PageView.builder(
      controller: read.pageController,
      itemCount: read.campaigns.length,
      onPageChanged: (newPageValue) => read.setCampaignsIndex(newPageValue),
      itemBuilder: ((context, index) => Image.asset(
            watch.campaigns[index],
          )),
    );
  }

  Widget spaceH20() {
    return const SizedBox(
      height: 20,
    );
  }
}
