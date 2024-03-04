import 'notification_type.dart';

class TtossNotification {
  final NotificationType type;
  final String description;
  final DateTime date;
  bool isRead;

  TtossNotification(this.type, this.description, this.date,
      {this.isRead = false});
}
