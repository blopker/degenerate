// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ActivityUnstarRepoForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ActivityUnstarRepoForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  ActivityUnstarRepoForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ActivityUnstarRepoForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ActivityUnstarRepoForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ActivityUnstarRepoForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class ActivityUnstarRepoForAuthenticatedUserError304 extends ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class ActivityUnstarRepoForAuthenticatedUserError401 extends ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ActivityUnstarRepoForAuthenticatedUserError403 extends ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActivityUnstarRepoForAuthenticatedUserError404 extends ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityUnstarRepoForAuthenticatedUserErrorUnknown extends ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
