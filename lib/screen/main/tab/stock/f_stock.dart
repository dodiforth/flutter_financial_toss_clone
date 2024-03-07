import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:flutter/material.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late final tabController = TabController(length: 6, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            actions: [
              ImageButton(
                onTap: () {
                  context.showSnackbar('검색');
                },
                imagePath: '$basePath/icon/stock_search.png',
              ),
              ImageButton(
                onTap: () {
                  context.showSnackbar('캘린더');
                },
                imagePath: '$basePath/icon/stock_calendar.png',
              ),
              ImageButton(
                onTap: () {
                  context.showSnackbar('설정');
                },
                imagePath: '$basePath/icon/stock_settings.png',
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              title,
              tabBar,
              myAccount,
              height20,
              myStocks,
            ]),
          ),
        ],
      ),
    );
  }

  Widget get title => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          '토스증권'.text.bold.size(24).make(),
          width20,
          'S&P 500'
              .text
              .size(13)
              .bold
              .color(context.appColors.lessImportant)
              .make(),
          width10,
          3919.29
              .toComma()
              .text
              .size(13)
              .bold
              .color(context.appColors.plus)
              .make(),
        ],
      ).pOnly(left: 20);
  Widget get tabBar => Column(
        children: [
          TabBar(
            controller: tabController,
            tabs: [
              '주식'.text.size(16).bold.make(),
              'ETF'.text.size(16).bold.make(),
              '선물/옵션'.text.size(16).bold.make(),
              '채권'.text.size(16).bold.make(),
              '펀드'.text.size(16).bold.make(),
              '외환'.text.size(16).bold.make(),
            ],
            isScrollable: true,
            labelColor: context.appColors.activate,
            unselectedLabelColor: context.appColors.inActivate,
            indicatorColor: context.appColors.activate,
          ),
          height10,
          Divider(
            color: context.appColors.divider,
            height: 1,
          ),
        ],
      ).pOnly(left: 20, right: 20);
  Widget get myAccount => const Placeholder();
  Widget get myStocks => const Placeholder();
}
