// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import '../constant/constant.dart';

class CustomButton extends ConsumerWidget {
  String text;
  Function onTapFunc;
  CustomButton({
    super.key,
    required this.text,
    required this.onTapFunc,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStatePropertyAll(20.allP),
              backgroundColor: const MaterialStatePropertyAll(Constant.orange)),
          onPressed: () {
            onTapFunc();
          },
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Constant.white,
            ),
          )),
    );
  }
}
