// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeSecurityGetDefaultConfigurationsError {const CodeSecurityGetDefaultConfigurationsError();

/// Decodes the payload for its declared status and content type.
static CodeSecurityGetDefaultConfigurationsError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const CodeSecurityGetDefaultConfigurationsError304();case 403:
final json = jsonDecode(response.body);
return  CodeSecurityGetDefaultConfigurationsError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeSecurityGetDefaultConfigurationsError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  CodeSecurityGetDefaultConfigurationsErrorUnknown(response); }}
}
/// Response for 304.
final class CodeSecurityGetDefaultConfigurationsError304 extends CodeSecurityGetDefaultConfigurationsError {const CodeSecurityGetDefaultConfigurationsError304();

}
/// Response for 403 (application/json).
final class CodeSecurityGetDefaultConfigurationsError403 extends CodeSecurityGetDefaultConfigurationsError {const CodeSecurityGetDefaultConfigurationsError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeSecurityGetDefaultConfigurationsError404 extends CodeSecurityGetDefaultConfigurationsError {const CodeSecurityGetDefaultConfigurationsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeSecurityGetDefaultConfigurationsErrorUnknown extends CodeSecurityGetDefaultConfigurationsError {const CodeSecurityGetDefaultConfigurationsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
