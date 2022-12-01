import 'package:flutter/material.dart';
import 'package:flutter_lovers/assets.dart';
import 'package:flutter_lovers/constant/constant.dart';
import 'package:flutter_lovers/view/base_scaffold.dart';
import 'package:flutter_lovers/view/home.dart';
import 'package:grock/grock.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Grock.toRemove(const BaseScaffold());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.darkWhite,
      body: Center(
        child: Image.asset(Assets.images.imSplashPNG),
      ),
    );
  }
}
