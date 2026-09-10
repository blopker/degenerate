// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UsersCheckBlockedError {const UsersCheckBlockedError();

/// Decodes the payload for its declared status and content type.
static UsersCheckBlockedError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const UsersCheckBlockedError304();
case 401:
final json = jsonDecode(response.body);
return UsersCheckBlockedError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return UsersCheckBlockedError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UsersCheckBlockedError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return UsersCheckBlockedErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class UsersCheckBlockedError304 extends UsersCheckBlockedError {const UsersCheckBlockedError304();

 }
/// Response for 401 (application/json).
final class UsersCheckBlockedError401 extends UsersCheckBlockedError {const UsersCheckBlockedError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class UsersCheckBlockedError403 extends UsersCheckBlockedError {const UsersCheckBlockedError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class UsersCheckBlockedError404 extends UsersCheckBlockedError {const UsersCheckBlockedError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UsersCheckBlockedErrorUnknown extends UsersCheckBlockedError {const UsersCheckBlockedErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
