// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import 'package:flutter_lovers/assets.dart';
import 'package:flutter_lovers/components/custom_button.dart';
import 'package:flutter_lovers/constant/constant.dart';
import 'package:flutter_lovers/view/checkout.dart';

import '../model/product_model.dart';

class Cart extends StatelessWidget {
  Cart({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: [15, 30].horizontalAndVerticalP,
        children: [
          freeShippingContainer(),
          productsBagList(),
          totalPriceRow(),
          CustomButton(
            text: "Checkout",
            onTapFunc: () => Grock.to(Checkout()),
          ),
        ],
      ),
    );
  }

  Padding totalPriceRow() {
    return Padding(
      padding: 40.onlyBottomP,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total",
            style: _styleTotal,
          ),
          Text(
            "\$1899",
            style: _styleTotal,
          ),
        ],
      ),
    );
  }

  TextStyle _styleTotal = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );

  ListView productsBagList() {
    return ListView.separated(
      padding: 40.verticalP,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return Container(
          padding: 10.allP,
          decoration: BoxDecoration(
              color: Constant.white,
              borderRadius: 10.allBR,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                )
              ]),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.images.imP1PNG,
                  width: Grock.width * 0.3,
                  height: Grock.width * 0.3,
                ),
                const SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "iPhone 18 Pro Max",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$1999",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Quantitiy",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 7),
                        quantityButton(icon: Icons.remove, onTap: () {}),
                        Padding(
                          padding: 7.horizontalP,
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        quantityButton(icon: Icons.add, onTap: () {}),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.clear),
                )
              ],
            ),
          ),
        );
      }),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
    );
  }

  Widget quantityButton({
    required IconData icon,
    required Function onTap,
  }) {
    return GrockContainer(
      onTap: onTap(),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: Constant.orange,
        borderRadius: 4.allBR,
      ),
      child: Center(
        child: Icon(
          icon,
          color: Constant.white,
          size: 20,
        ),
      ),
    );
  }

  Container freeShippingContainer() {
    return Container(
      padding: [18, 12].horizontalAndVerticalP,
      margin: 30.horizontalP,
      decoration: BoxDecoration(
        color: Constant.yellow,
        borderRadius: 10.allBR,
      ),
      child: const Center(
        child: Text("Delivery for FREE until end of this month"),
      ),
    );
  }
}
