import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 's_stock_detail.dart';

class SearchAutoCompleteList extends StatelessWidget
    with SearchStockDataProvider {
  final TextEditingController controller;
  SearchAutoCompleteList(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: searchData.autoCompleteList.length,
        itemBuilder: (context, index) {
          final stock = searchData.autoCompleteList[index];
          final stockName = stock.stockName;
          return Tap(
            onTap: () {
              controller.clear();
              searchData.addHistory(stock);
              Nav.push(StockDetailScreen(stockName: stockName));
            },
            child: stockName.text.make().p(20),
          );
        });
  }
}
