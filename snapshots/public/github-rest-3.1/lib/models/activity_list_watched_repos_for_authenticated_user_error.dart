// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityListWatchedReposForAuthenticatedUserError {const ActivityListWatchedReposForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ActivityListWatchedReposForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ActivityListWatchedReposForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return ActivityListWatchedReposForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ActivityListWatchedReposForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActivityListWatchedReposForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class ActivityListWatchedReposForAuthenticatedUserError304 extends ActivityListWatchedReposForAuthenticatedUserError {const ActivityListWatchedReposForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class ActivityListWatchedReposForAuthenticatedUserError401 extends ActivityListWatchedReposForAuthenticatedUserError {const ActivityListWatchedReposForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ActivityListWatchedReposForAuthenticatedUserError403 extends ActivityListWatchedReposForAuthenticatedUserError {const ActivityListWatchedReposForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityListWatchedReposForAuthenticatedUserErrorUnknown extends ActivityListWatchedReposForAuthenticatedUserError {const ActivityListWatchedReposForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
