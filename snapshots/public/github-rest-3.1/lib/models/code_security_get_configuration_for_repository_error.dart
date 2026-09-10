// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeSecurityGetConfigurationForRepositoryError {const CodeSecurityGetConfigurationForRepositoryError();

/// Decodes the payload for its declared status and content type.
static CodeSecurityGetConfigurationForRepositoryError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const CodeSecurityGetConfigurationForRepositoryError304();
case 403:
final json = jsonDecode(response.body);
return CodeSecurityGetConfigurationForRepositoryError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeSecurityGetConfigurationForRepositoryError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodeSecurityGetConfigurationForRepositoryErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class CodeSecurityGetConfigurationForRepositoryError304 extends CodeSecurityGetConfigurationForRepositoryError {const CodeSecurityGetConfigurationForRepositoryError304();

 }
/// Response for 403 (application/json).
final class CodeSecurityGetConfigurationForRepositoryError403 extends CodeSecurityGetConfigurationForRepositoryError {const CodeSecurityGetConfigurationForRepositoryError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodeSecurityGetConfigurationForRepositoryError404 extends CodeSecurityGetConfigurationForRepositoryError {const CodeSecurityGetConfigurationForRepositoryError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeSecurityGetConfigurationForRepositoryErrorUnknown extends CodeSecurityGetConfigurationForRepositoryError {const CodeSecurityGetConfigurationForRepositoryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
