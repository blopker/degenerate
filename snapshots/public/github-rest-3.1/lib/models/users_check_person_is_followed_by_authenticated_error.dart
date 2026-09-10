// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError();

/// Decodes the payload for its declared status and content type.
static UsersCheckPersonIsFollowedByAuthenticatedError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const UsersCheckPersonIsFollowedByAuthenticatedError304();
case 401:
final json = jsonDecode(response.body);
return UsersCheckPersonIsFollowedByAuthenticatedError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersCheckPersonIsFollowedByAuthenticatedError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersCheckPersonIsFollowedByAuthenticatedError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersCheckPersonIsFollowedByAuthenticatedErrorUnknown(response);
}
}
}
/// Response for 304.
final class UsersCheckPersonIsFollowedByAuthenticatedError304 extends UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError304();

}
/// Response for 401 (application/json).
final class UsersCheckPersonIsFollowedByAuthenticatedError401 extends UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class UsersCheckPersonIsFollowedByAuthenticatedError403 extends UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class UsersCheckPersonIsFollowedByAuthenticatedError404 extends UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersCheckPersonIsFollowedByAuthenticatedErrorUnknown extends UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
