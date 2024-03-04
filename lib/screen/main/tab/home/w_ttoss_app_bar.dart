import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/notification/s_notification.dart';
import 'package:flutter/material.dart';
import '../../../../common/common.dart';

class TtossAppBar extends StatefulWidget {
  static const double appBarHeight = 100;
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  bool _showRedDot = false;

  void toggleShowRedDot() {
    setState(() {
      _showRedDot = !_showRedDot;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TtossAppBar.appBarHeight,
      // height: context.statusBarHeight + 50,
      padding: EdgeInsets.only(top: context.statusBarHeight),
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          Image.asset(
            '$basePath/icon/toss.png',
            height: 30,
          ),
          emptyExpanded,
          Image.asset(
            '$basePath/icon/map_point.png',
            height: 30,
          ),
          width10,
          Tap(
            onTap: () {
              //TODO: Implement : enter to notification page
              Nav.push(const NotificationScreen());
            },
            child: Stack(
              children: [
                Image.asset(
                  '$basePath/icon/notification.png',
                  height: 30,
                ),
                if (_showRedDot)
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                      ),
                    ),
                  )
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
