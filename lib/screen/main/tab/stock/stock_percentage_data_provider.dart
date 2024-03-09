import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

mixin StockPercentageProvider {
  int get currentPrice;
  int get yesterdayClosePrice;

  double get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100)
          .toPrecision(2);
  bool get isSame => currentPrice == yesterdayClosePrice;
  bool get isUp => currentPrice > yesterdayClosePrice;
  bool get isDown => currentPrice < yesterdayClosePrice;
  String get todayPercentageString => "$symbol$todayPercentage%";
  String get symbol => isSame
      ? ""
      : isUp
          ? "+"
          : "-";

  Color getPriceColor(BuildContext context) => isSame
      ? context.appColors.lessImportant
      : isUp
          ? context.appColors.plus
          : context.appColors.minus;
}
