// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_security_configuration.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CodeSecurityUpdateConfigurationSuccess {const CodeSecurityUpdateConfigurationSuccess();

/// Decodes the payload for its declared status and content type.
static CodeSecurityUpdateConfigurationSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return  CodeSecurityUpdateConfigurationSuccess200(CodeSecurityConfiguration.fromJson(json as Map<String, dynamic>));case 204:
return  const CodeSecurityUpdateConfigurationSuccess204();default:
return  CodeSecurityUpdateConfigurationSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class CodeSecurityUpdateConfigurationSuccess200 extends CodeSecurityUpdateConfigurationSuccess {const CodeSecurityUpdateConfigurationSuccess200(this.data);

/// The decoded response payload.
final CodeSecurityConfiguration data;

}
/// Response for 204.
final class CodeSecurityUpdateConfigurationSuccess204 extends CodeSecurityUpdateConfigurationSuccess {const CodeSecurityUpdateConfigurationSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeSecurityUpdateConfigurationSuccessUnknown extends CodeSecurityUpdateConfigurationSuccess {const CodeSecurityUpdateConfigurationSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
