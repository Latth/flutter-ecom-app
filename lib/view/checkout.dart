import 'package:flutter/material.dart';
import 'package:flutter_lovers/constant/constant.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class Checkout extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: checkoutAppBar(context),
    );
  }

  AppBar checkoutAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      title: const Text(
        "Checkout",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          Grock.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Constant.black,
        ),
      ),
    );
  }
}
