// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivitySetThreadSubscriptionError {const ActivitySetThreadSubscriptionError();

/// Decodes the payload for its declared status and content type.
static ActivitySetThreadSubscriptionError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ActivitySetThreadSubscriptionError304();
case 401:
final json = jsonDecode(response.body);
return ActivitySetThreadSubscriptionError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ActivitySetThreadSubscriptionError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActivitySetThreadSubscriptionErrorUnknown(response);
}
}
}
/// Response for 304.
final class ActivitySetThreadSubscriptionError304 extends ActivitySetThreadSubscriptionError {const ActivitySetThreadSubscriptionError304();

}
/// Response for 401 (application/json).
final class ActivitySetThreadSubscriptionError401 extends ActivitySetThreadSubscriptionError {const ActivitySetThreadSubscriptionError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ActivitySetThreadSubscriptionError403 extends ActivitySetThreadSubscriptionError {const ActivitySetThreadSubscriptionError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivitySetThreadSubscriptionErrorUnknown extends ActivitySetThreadSubscriptionError {const ActivitySetThreadSubscriptionErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
