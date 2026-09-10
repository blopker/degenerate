// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityMarkNotificationsAsReadError {const ActivityMarkNotificationsAsReadError();

/// Decodes the payload for its declared status and content type.
static ActivityMarkNotificationsAsReadError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ActivityMarkNotificationsAsReadError304();
case 401:
final json = jsonDecode(response.body);
return ActivityMarkNotificationsAsReadError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ActivityMarkNotificationsAsReadError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActivityMarkNotificationsAsReadErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ActivityMarkNotificationsAsReadError304 extends ActivityMarkNotificationsAsReadError {const ActivityMarkNotificationsAsReadError304();

 }
/// Response for 401 (application/json).
final class ActivityMarkNotificationsAsReadError401 extends ActivityMarkNotificationsAsReadError {const ActivityMarkNotificationsAsReadError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class ActivityMarkNotificationsAsReadError403 extends ActivityMarkNotificationsAsReadError {const ActivityMarkNotificationsAsReadError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityMarkNotificationsAsReadErrorUnknown extends ActivityMarkNotificationsAsReadError {const ActivityMarkNotificationsAsReadErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
