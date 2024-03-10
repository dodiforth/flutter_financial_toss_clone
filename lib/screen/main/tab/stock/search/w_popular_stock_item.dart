import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/material.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;

  const PopularStockItem({Key? key, required this.stock, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 60,
      child: Placeholder(),
    );
  }
}
