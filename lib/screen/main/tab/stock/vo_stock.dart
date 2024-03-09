import 'dart:ui';

import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Stock extends PopularStock {
  final String sotckImagePath;

  Stock({
    required String stockName,
    required int yesterdayClosePrice,
    required int currentPrice,
    required this.sotckImagePath,
  }) : super(
          stockName: stockName,
          yesterdayClosePrice: yesterdayClosePrice,
          currentPrice: currentPrice,
        );
}
