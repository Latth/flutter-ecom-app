import 'package:flutter/material.dart';
import 'package:flutter_lovers/constant/constant.dart';
import 'package:flutter_lovers/view/splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Grock.navigationKey,
      scaffoldMessengerKey: Grock.scaffoldMessengerKey,
      theme: ThemeData(
        scaffoldBackgroundColor: Constant.white,
      ),
      title: 'E-Commerce App',
      home: Splash(),
    );
  }
}
