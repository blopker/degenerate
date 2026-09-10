// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityDeleteThreadSubscriptionError {const ActivityDeleteThreadSubscriptionError();

/// Decodes the payload for its declared status and content type.
static ActivityDeleteThreadSubscriptionError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ActivityDeleteThreadSubscriptionError304();
case 401:
final json = jsonDecode(response.body);
return ActivityDeleteThreadSubscriptionError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ActivityDeleteThreadSubscriptionError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActivityDeleteThreadSubscriptionErrorUnknown(response);
}
}
}
/// Response for 304.
final class ActivityDeleteThreadSubscriptionError304 extends ActivityDeleteThreadSubscriptionError {const ActivityDeleteThreadSubscriptionError304();

}
/// Response for 401 (application/json).
final class ActivityDeleteThreadSubscriptionError401 extends ActivityDeleteThreadSubscriptionError {const ActivityDeleteThreadSubscriptionError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ActivityDeleteThreadSubscriptionError403 extends ActivityDeleteThreadSubscriptionError {const ActivityDeleteThreadSubscriptionError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityDeleteThreadSubscriptionErrorUnknown extends ActivityDeleteThreadSubscriptionError {const ActivityDeleteThreadSubscriptionErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
