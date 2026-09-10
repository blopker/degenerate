// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeSecurityGetConfigurationError {const CodeSecurityGetConfigurationError();

/// Decodes the payload for its declared status and content type.
static CodeSecurityGetConfigurationError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const CodeSecurityGetConfigurationError304();case 403:
final json = jsonDecode(response.body);
return  CodeSecurityGetConfigurationError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeSecurityGetConfigurationError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  CodeSecurityGetConfigurationErrorUnknown(response); }}
}
/// Response for 304.
final class CodeSecurityGetConfigurationError304 extends CodeSecurityGetConfigurationError {const CodeSecurityGetConfigurationError304();

}
/// Response for 403 (application/json).
final class CodeSecurityGetConfigurationError403 extends CodeSecurityGetConfigurationError {const CodeSecurityGetConfigurationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeSecurityGetConfigurationError404 extends CodeSecurityGetConfigurationError {const CodeSecurityGetConfigurationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeSecurityGetConfigurationErrorUnknown extends CodeSecurityGetConfigurationError {const CodeSecurityGetConfigurationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
