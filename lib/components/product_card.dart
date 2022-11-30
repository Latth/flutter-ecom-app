// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_lovers/constant/constant.dart';

import 'package:flutter_lovers/model/product_model.dart';
import 'package:grock/grock.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GrockContainer(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: 10.allBR,
        color: Constant.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
          )
        ],
      ),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imageURL,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: 10.horizontalP,
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    product.productTitle,
                    style: const TextStyle(fontSize: 15),
                  )),
                  product.isSaved == true
                      ? const Icon(
                          Icons.bookmark,
                          color: Constant.orange,
                        )
                      : const Icon(Icons.bookmark_outline),
                ],
              ),
            ),
            Padding(
              padding: [10, 5].horizontalAndVerticalP,
              child: Text(
                "\$${product.productPrice}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: [10, 5].horizontalAndVerticalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Constant.orange,
                    size: 13,
                  ),
                  Text(
                    product.stars.toString(),
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
