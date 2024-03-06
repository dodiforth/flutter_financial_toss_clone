import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:flutter/material.dart';
import 'vo_benefit.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefitItem;
  const BenefitItem({super.key, required this.benefitItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          benefitItem.imagePath,
          width: 50,
          height: 50,
        ),
        width10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefitItem.subTitle.text.size(13).make(),
            height5,
            benefitItem.title.text
                .color(context.appColors.bleutext)
                .size(13)
                .make(),
          ],
        )
      ],
    ).pSymmetric(v: 20);
  }
}
