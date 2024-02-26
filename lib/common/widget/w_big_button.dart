import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import '../../common/common.dart';
import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback
      onTap; // Signature of callbacks that have no arguments and return no data.

  const BigButton(this.text, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: context.appColors.buttonBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text.text.white.size(20).bold.make(),
          const Arrow(),
        ],
      ),
    );
  }
}
