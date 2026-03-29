// GENERATED CODE - DO NOT MODIFY BY HAND

final class ActivityMarkNotificationsAsReadResponse202 {const ActivityMarkNotificationsAsReadResponse202({this.message});

factory ActivityMarkNotificationsAsReadResponse202.fromJson(Map<String, dynamic> json) { return ActivityMarkNotificationsAsReadResponse202(
  message: json['message'] as String?,
); }

final String? message;

Map<String, dynamic> toJson() { return {
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ActivityMarkNotificationsAsReadResponse202 copyWith({String Function()? message}) { return ActivityMarkNotificationsAsReadResponse202(
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActivityMarkNotificationsAsReadResponse202 &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'ActivityMarkNotificationsAsReadResponse202(message: $message)'; } 
 }
