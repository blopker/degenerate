// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeSecurityDetachConfigurationError {const CodeSecurityDetachConfigurationError();

/// Decodes the payload for its declared status and content type.
static CodeSecurityDetachConfigurationError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return CodeSecurityDetachConfigurationError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return CodeSecurityDetachConfigurationError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return CodeSecurityDetachConfigurationError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return CodeSecurityDetachConfigurationError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeSecurityDetachConfigurationError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return CodeSecurityDetachConfigurationError409(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodeSecurityDetachConfigurationErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class CodeSecurityDetachConfigurationError400ApplicationJson extends CodeSecurityDetachConfigurationError {const CodeSecurityDetachConfigurationError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 400 (application/scim+json).
final class CodeSecurityDetachConfigurationError400ApplicationScimJson extends CodeSecurityDetachConfigurationError {const CodeSecurityDetachConfigurationError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

 }
/// Response for 403 (application/json).
final class CodeSecurityDetachConfigurationError403 extends CodeSecurityDetachConfigurationError {const CodeSecurityDetachConfigurationError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodeSecurityDetachConfigurationError404 extends CodeSecurityDetachConfigurationError {const CodeSecurityDetachConfigurationError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409 (application/json).
final class CodeSecurityDetachConfigurationError409 extends CodeSecurityDetachConfigurationError {const CodeSecurityDetachConfigurationError409(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeSecurityDetachConfigurationErrorUnknown extends CodeSecurityDetachConfigurationError {const CodeSecurityDetachConfigurationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
