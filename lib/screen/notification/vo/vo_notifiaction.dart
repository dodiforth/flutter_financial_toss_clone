import 'notification_type.dart';

class TtossNotification {
  final NotificationType type;
  final String description;
  final DateTime date;

  TtossNotification(this.type, this.description, this.date);
}
