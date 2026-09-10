// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityListReposStarredByAuthenticatedUserError {const ActivityListReposStarredByAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ActivityListReposStarredByAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ActivityListReposStarredByAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return ActivityListReposStarredByAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ActivityListReposStarredByAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActivityListReposStarredByAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ActivityListReposStarredByAuthenticatedUserError304 extends ActivityListReposStarredByAuthenticatedUserError {const ActivityListReposStarredByAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class ActivityListReposStarredByAuthenticatedUserError401 extends ActivityListReposStarredByAuthenticatedUserError {const ActivityListReposStarredByAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class ActivityListReposStarredByAuthenticatedUserError403 extends ActivityListReposStarredByAuthenticatedUserError {const ActivityListReposStarredByAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityListReposStarredByAuthenticatedUserErrorUnknown extends ActivityListReposStarredByAuthenticatedUserError {const ActivityListReposStarredByAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
