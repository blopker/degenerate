// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ActivityListNotificationsForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ActivityListNotificationsForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  ActivityListNotificationsForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ActivityListNotificationsForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ActivityListNotificationsForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ActivityListNotificationsForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class ActivityListNotificationsForAuthenticatedUserError304 extends ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class ActivityListNotificationsForAuthenticatedUserError401 extends ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ActivityListNotificationsForAuthenticatedUserError403 extends ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActivityListNotificationsForAuthenticatedUserError422 extends ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityListNotificationsForAuthenticatedUserErrorUnknown extends ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
