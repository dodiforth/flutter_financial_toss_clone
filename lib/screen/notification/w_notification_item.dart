import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import './vo/vo_notifiaction.dart';

class NotificationItemWidget extends StatefulWidget {
  final TtossNotification notification;
  const NotificationItemWidget({super.key, required this.notification});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Image.asset(widget.notification.type.iconPath)],
        ),
        widget.notification.description.text.make(),
      ],
    );
  }
}
