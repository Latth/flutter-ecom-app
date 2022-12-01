import 'package:flutter/material.dart';
import 'package:flutter_lovers/components/custom_appbar.dart';
import 'package:flutter_lovers/riverpod/base_scaffold_riverpod.dart';
import 'package:flutter_lovers/view/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/custom_bottom_nav_bar.dart';

final baseScaffolRiverpod =
    ChangeNotifierProvider((ref) => BaseScaffoldRiverpod());

class BaseScaffold extends ConsumerStatefulWidget {
  const BaseScaffold({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends ConsumerState<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavbar(),
      body: ref.watch(baseScaffolRiverpod).changeBody(),
    );
  }
}
