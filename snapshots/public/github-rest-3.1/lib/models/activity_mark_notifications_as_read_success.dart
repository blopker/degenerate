// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'activity_mark_notifications_as_read_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ActivityMarkNotificationsAsReadSuccess {const ActivityMarkNotificationsAsReadSuccess();

/// Decodes the payload for its declared status and content type.
static ActivityMarkNotificationsAsReadSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 202:
final json = jsonDecode(response.body);
return  ActivityMarkNotificationsAsReadSuccess202(ActivityMarkNotificationsAsReadResponse.fromJson(json as Map<String, dynamic>));case 205:
return  const ActivityMarkNotificationsAsReadSuccess205();default:
return  ActivityMarkNotificationsAsReadSuccessUnknown(response); }}
}
/// Response for 202 (application/json).
final class ActivityMarkNotificationsAsReadSuccess202 extends ActivityMarkNotificationsAsReadSuccess {const ActivityMarkNotificationsAsReadSuccess202(this.data);

/// The decoded response payload.
final ActivityMarkNotificationsAsReadResponse data;

}
/// Response for 205.
final class ActivityMarkNotificationsAsReadSuccess205 extends ActivityMarkNotificationsAsReadSuccess {const ActivityMarkNotificationsAsReadSuccess205();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityMarkNotificationsAsReadSuccessUnknown extends ActivityMarkNotificationsAsReadSuccess {const ActivityMarkNotificationsAsReadSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
