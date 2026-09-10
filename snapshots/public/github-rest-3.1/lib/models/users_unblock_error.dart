// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersUnblockError {const UsersUnblockError();

/// Decodes the payload for its declared status and content type.
static UsersUnblockError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersUnblockError304();
case 401:
final json = jsonDecode(response.body);
return UsersUnblockError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersUnblockError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersUnblockError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersUnblockErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersUnblockError304 extends UsersUnblockError {const UsersUnblockError304();

 }
/// Response for 401 (application/json).
final class UsersUnblockError401 extends UsersUnblockError {const UsersUnblockError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersUnblockError403 extends UsersUnblockError {const UsersUnblockError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersUnblockError404 extends UsersUnblockError {const UsersUnblockError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersUnblockErrorUnknown extends UsersUnblockError {const UsersUnblockErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
