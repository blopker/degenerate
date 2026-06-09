// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ActivityMarkNotificationsAsReadResponse {const ActivityMarkNotificationsAsReadResponse({this.message});

factory ActivityMarkNotificationsAsReadResponse.fromJson(Map<String, dynamic> json) { return ActivityMarkNotificationsAsReadResponse(
  message: json['message'] as String?,
); }

final String? message;

Map<String, dynamic> toJson() { return {
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message'}.contains(key)); } 
ActivityMarkNotificationsAsReadResponse copyWith({String Function()? message}) { return ActivityMarkNotificationsAsReadResponse(
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActivityMarkNotificationsAsReadResponse &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'ActivityMarkNotificationsAsReadResponse(message: $message)'; } 
 }
