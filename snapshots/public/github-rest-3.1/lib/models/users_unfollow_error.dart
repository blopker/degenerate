// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersUnfollowError {const UsersUnfollowError();

/// Decodes the payload for its declared status and content type.
static UsersUnfollowError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersUnfollowError304();
case 401:
final json = jsonDecode(response.body);
return UsersUnfollowError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersUnfollowError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersUnfollowError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersUnfollowErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersUnfollowError304 extends UsersUnfollowError {const UsersUnfollowError304();

 }
/// Response for 401 (application/json).
final class UsersUnfollowError401 extends UsersUnfollowError {const UsersUnfollowError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersUnfollowError403 extends UsersUnfollowError {const UsersUnfollowError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersUnfollowError404 extends UsersUnfollowError {const UsersUnfollowError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersUnfollowErrorUnknown extends UsersUnfollowError {const UsersUnfollowErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
