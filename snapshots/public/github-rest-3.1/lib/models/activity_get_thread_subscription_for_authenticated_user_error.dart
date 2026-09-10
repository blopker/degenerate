// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityGetThreadSubscriptionForAuthenticatedUserError {const ActivityGetThreadSubscriptionForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ActivityGetThreadSubscriptionForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ActivityGetThreadSubscriptionForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return ActivityGetThreadSubscriptionForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ActivityGetThreadSubscriptionForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActivityGetThreadSubscriptionForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class ActivityGetThreadSubscriptionForAuthenticatedUserError304 extends ActivityGetThreadSubscriptionForAuthenticatedUserError {const ActivityGetThreadSubscriptionForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class ActivityGetThreadSubscriptionForAuthenticatedUserError401 extends ActivityGetThreadSubscriptionForAuthenticatedUserError {const ActivityGetThreadSubscriptionForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ActivityGetThreadSubscriptionForAuthenticatedUserError403 extends ActivityGetThreadSubscriptionForAuthenticatedUserError {const ActivityGetThreadSubscriptionForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityGetThreadSubscriptionForAuthenticatedUserErrorUnknown extends ActivityGetThreadSubscriptionForAuthenticatedUserError {const ActivityGetThreadSubscriptionForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
