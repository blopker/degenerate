// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'activity_list_public_events_response503.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityListPublicEventsError {const ActivityListPublicEventsError();

/// Decodes the payload for its declared status and content type.
static ActivityListPublicEventsError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ActivityListPublicEventsError304();case 403:
final json = jsonDecode(response.body);
return  ActivityListPublicEventsError403(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  ActivityListPublicEventsError503(ActivityListPublicEventsResponse503.fromJson(json as Map<String, dynamic>));default:
return  ActivityListPublicEventsErrorUnknown(response); }}
}
/// Response for 304.
final class ActivityListPublicEventsError304 extends ActivityListPublicEventsError {const ActivityListPublicEventsError304();

}
/// Response for 403 (application/json).
final class ActivityListPublicEventsError403 extends ActivityListPublicEventsError {const ActivityListPublicEventsError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class ActivityListPublicEventsError503 extends ActivityListPublicEventsError {const ActivityListPublicEventsError503(this.data);

/// The decoded response payload.
final ActivityListPublicEventsResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityListPublicEventsErrorUnknown extends ActivityListPublicEventsError {const ActivityListPublicEventsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
