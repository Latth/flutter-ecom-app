import 'package:flutter/material.dart';
import 'package:flutter_lovers/constant/constant.dart';
import 'package:flutter_lovers/view/base_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grock/grock.dart';

class CustomBottomNavbar extends ConsumerWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(baseScaffolRiverpod);
    var read = ref.read(baseScaffolRiverpod);

    return SafeArea(
      top: false,
      child: Container(
        width: Grock.width,
        padding: [15, 15].horizontalAndVerticalP,
        decoration: const BoxDecoration(
            color: Constant.darkWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (var i = 0; i < read.bottomNavbarItems.length; i++)
              GrockContainer(
                onTap: (() {
                  read.setNewIndex(i);
                }),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    i == watch.bottomNavbarCurrentIndex
                        ? Container(
                            width: 20,
                            height: 2,
                            decoration: BoxDecoration(
                              // shape: BoxShape.circle,
                              color: i == watch.bottomNavbarCurrentIndex
                                  ? Constant.orange
                                  : Constant.blackWOpacity,
                            ),
                          )
                        : Container(),
                    const SizedBox(
                      height: 3,
                    ),
                    SvgPicture.asset(
                      read.bottomNavbarItems[i].navIconPath,
                      color: i == watch.bottomNavbarCurrentIndex
                          ? Constant.orange
                          : Constant.black,
                      height: 18,
                      width: 18,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      read.bottomNavbarItems[i].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: i == watch.bottomNavbarCurrentIndex
                            ? Constant.orange
                            : Constant.blackWOpacity,
                      ),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
