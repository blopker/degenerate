// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ActivityStarRepoForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ActivityStarRepoForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return ActivityStarRepoForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ActivityStarRepoForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ActivityStarRepoForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActivityStarRepoForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class ActivityStarRepoForAuthenticatedUserError304 extends ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class ActivityStarRepoForAuthenticatedUserError401 extends ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ActivityStarRepoForAuthenticatedUserError403 extends ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActivityStarRepoForAuthenticatedUserError404 extends ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityStarRepoForAuthenticatedUserErrorUnknown extends ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
