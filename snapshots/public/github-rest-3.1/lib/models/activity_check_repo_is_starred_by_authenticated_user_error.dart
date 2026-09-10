// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ActivityCheckRepoIsStarredByAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ActivityCheckRepoIsStarredByAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  ActivityCheckRepoIsStarredByAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ActivityCheckRepoIsStarredByAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ActivityCheckRepoIsStarredByAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ActivityCheckRepoIsStarredByAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class ActivityCheckRepoIsStarredByAuthenticatedUserError304 extends ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class ActivityCheckRepoIsStarredByAuthenticatedUserError401 extends ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ActivityCheckRepoIsStarredByAuthenticatedUserError403 extends ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActivityCheckRepoIsStarredByAuthenticatedUserError404 extends ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityCheckRepoIsStarredByAuthenticatedUserErrorUnknown extends ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
