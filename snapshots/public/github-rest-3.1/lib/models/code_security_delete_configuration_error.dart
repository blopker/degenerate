// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeSecurityDeleteConfigurationError {const CodeSecurityDeleteConfigurationError();

/// Decodes the payload for its declared status and content type.
static CodeSecurityDeleteConfigurationError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  CodeSecurityDeleteConfigurationError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  CodeSecurityDeleteConfigurationError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  CodeSecurityDeleteConfigurationError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 403:
final json = jsonDecode(response.body);
return  CodeSecurityDeleteConfigurationError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeSecurityDeleteConfigurationError404(BasicError.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  CodeSecurityDeleteConfigurationError409(BasicError.fromJson(json as Map<String, dynamic>));default:
return  CodeSecurityDeleteConfigurationErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class CodeSecurityDeleteConfigurationError400ApplicationJson extends CodeSecurityDeleteConfigurationError {const CodeSecurityDeleteConfigurationError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class CodeSecurityDeleteConfigurationError400ApplicationScimJson extends CodeSecurityDeleteConfigurationError {const CodeSecurityDeleteConfigurationError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class CodeSecurityDeleteConfigurationError403 extends CodeSecurityDeleteConfigurationError {const CodeSecurityDeleteConfigurationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeSecurityDeleteConfigurationError404 extends CodeSecurityDeleteConfigurationError {const CodeSecurityDeleteConfigurationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class CodeSecurityDeleteConfigurationError409 extends CodeSecurityDeleteConfigurationError {const CodeSecurityDeleteConfigurationError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeSecurityDeleteConfigurationErrorUnknown extends CodeSecurityDeleteConfigurationError {const CodeSecurityDeleteConfigurationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
