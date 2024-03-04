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
    return const Placeholder();
  }
}
