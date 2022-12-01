// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_lovers/constant/constant.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_lovers/model/product_model.dart';
import 'package:grock/grock.dart';

class ProductDetail extends ConsumerStatefulWidget {
  Product product;
  ProductDetail({
    required this.product,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailState();
}

class _ProductDetailState extends ConsumerState<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(children: [
              productImage(),
              productTitle(),
              productColors(),
              productSubtitle(),
              productPriceRow(),
              Padding(
                padding: [20, 20, 20, 0].paddingLTRB,
                child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll(20.allP),
                        backgroundColor:
                            MaterialStatePropertyAll(Constant.orange)),
                    onPressed: () {},
                    child: const Text(
                      "Add to cart",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
              )
            ]),
            productAppBar()
          ],
        ),
      ),
    );
  }

  Padding productPriceRow() {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Price",
            style: _descTitleStyle,
          ),
          Text(
            "\$${widget.product.productPrice}",
            style: _subtitleStyle,
          ),
        ],
      ),
    );
  }

  Padding productAppBar() {
    return Padding(
      padding: [20, 10].horizontalAndVerticalP,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Grock.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 32,
              color: Constant.black,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.bookmark_border,
              size: 32,
              color: Constant.black,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Padding productColors() {
    return Padding(
      padding: [20, 0, 20, 0].paddingLTRB,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Colors",
            style: _subtitleStyle,
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 15,
            children: [
              for (var i = 0; i < widget.product.color.length; i++)
                Container(
                  width: 113,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: 10.allBR,
                    color: widget.product.color[i],
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }

  Padding productTitle() {
    return Padding(
      padding: 20.allP,
      child: Text(
        widget.product.productTitle,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding productSubtitle() {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.product.descTitle,
            style: _descTitleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(widget.product.descDetail),
        ],
      ),
    );
  }

  SizedBox productImage() {
    return SizedBox(
      height: 380,
      width: double.maxFinite,
      child: Hero(
        tag: widget.product.imageURL,
        child: Image.asset(
          widget.product.imageURL,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  final TextStyle _subtitleStyle = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
  final TextStyle _descTitleStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
