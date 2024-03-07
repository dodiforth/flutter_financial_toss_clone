import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:flutter/material.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [myAccount, height20, myStock],
    );
  }

  Widget get myAccount => Container(
        padding: const EdgeInsets.all(16),
        child: const Row(
          children: [
            Text('내 계좌'),
            Spacer(),
            Text('계좌 선택'),
          ],
        ),
      );
  Widget get myStock => Container(
        padding: const EdgeInsets.all(16),
        child: const Row(
          children: [
            Text('내 주식'),
            Spacer(),
            Text('주식 추가'),
          ],
        ),
      );
}
