// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'activity_mark_repo_notifications_as_read_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ActivityMarkRepoNotificationsAsReadSuccess {const ActivityMarkRepoNotificationsAsReadSuccess();

/// Decodes the payload for its declared status and content type.
static ActivityMarkRepoNotificationsAsReadSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 202:
final json = jsonDecode(response.body);
return ActivityMarkRepoNotificationsAsReadSuccess202(ActivityMarkRepoNotificationsAsReadResponse.fromJson(json as Map<String, dynamic>));
case 205:
return const ActivityMarkRepoNotificationsAsReadSuccess205();
default:
return ActivityMarkRepoNotificationsAsReadSuccessUnknown(response);
}
}
}
/// Response for 202 (application/json).
final class ActivityMarkRepoNotificationsAsReadSuccess202 extends ActivityMarkRepoNotificationsAsReadSuccess {const ActivityMarkRepoNotificationsAsReadSuccess202(this.data);

/// The decoded response payload.
final ActivityMarkRepoNotificationsAsReadResponse data;

}
/// Response for 205.
final class ActivityMarkRepoNotificationsAsReadSuccess205 extends ActivityMarkRepoNotificationsAsReadSuccess {const ActivityMarkRepoNotificationsAsReadSuccess205();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityMarkRepoNotificationsAsReadSuccessUnknown extends ActivityMarkRepoNotificationsAsReadSuccess {const ActivityMarkRepoNotificationsAsReadSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
