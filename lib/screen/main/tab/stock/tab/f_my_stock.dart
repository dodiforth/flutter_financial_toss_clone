import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:fast_app_base/common/widget/w_long_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';

import 'w_interest_stock_list.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getMyAccount(context), height20, getMyStock(context)],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        color: context.appColors.roundedLayoutBackground,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            '계좌'.text.make(),
            Row(
              children: [
                '443원'.text.size(24).bold.make(),
                const Arrow(),
                emptyExpanded,
                RoundedContainer(
                  backgroundColor: context.appColors.buttonBackground,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  radius: 8,
                  child: '채우기'.text.size(12).make(),
                ),
              ],
            ),
            height30,
            Line(
              color: context.appColors.divider,
            ),
            height10,
            const LongButton(title: '주문내역'),
            const LongButton(title: '판매수익')
          ],
        ),
      );
  Widget getMyStock(BuildContext context) => Column(
        children: [
          Container(
            color: context.appColors.roundedLayoutBackground,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                height30,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('관심주식'),
                    Text('편집하기'),
                  ],
                ),
                height20,
                Tap(
                  onTap: () {
                    context.showSnackbar('기본');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        '기본'.text.make(),
                        const Arrow(
                          direction: AxisDirection.up,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const InterestStockList().pSymmetric(h: 20, v: 30),
        ],
      );
}
