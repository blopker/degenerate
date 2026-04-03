// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ActivityMarkRepoNotificationsAsReadResponse202 {const ActivityMarkRepoNotificationsAsReadResponse202({this.message, this.url, });

factory ActivityMarkRepoNotificationsAsReadResponse202.fromJson(Map<String, dynamic> json) { return ActivityMarkRepoNotificationsAsReadResponse202(
  message: json['message'] as String?,
  url: json['url'] as String?,
); }

final String? message;

final String? url;

Map<String, dynamic> toJson() { return {
  'message': ?message,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message', 'url'}.contains(key)); } 
ActivityMarkRepoNotificationsAsReadResponse202 copyWith({String Function()? message, String Function()? url, }) { return ActivityMarkRepoNotificationsAsReadResponse202(
  message: message != null ? message() : this.message,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActivityMarkRepoNotificationsAsReadResponse202 &&
          message == other.message &&
          url == other.url; } 
@override int get hashCode { return Object.hash(message, url); } 
@override String toString() { return 'ActivityMarkRepoNotificationsAsReadResponse202(message: $message, url: $url)'; } 
 }
