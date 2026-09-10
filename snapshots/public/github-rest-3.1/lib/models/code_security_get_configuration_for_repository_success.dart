// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_security_configuration_for_repository.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CodeSecurityGetConfigurationForRepositorySuccess {const CodeSecurityGetConfigurationForRepositorySuccess();

/// Decodes the payload for its declared status and content type.
static CodeSecurityGetConfigurationForRepositorySuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return CodeSecurityGetConfigurationForRepositorySuccess200(CodeSecurityConfigurationForRepository.fromJson(json as Map<String, dynamic>));
case 204:
return const CodeSecurityGetConfigurationForRepositorySuccess204();
default:
return CodeSecurityGetConfigurationForRepositorySuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class CodeSecurityGetConfigurationForRepositorySuccess200 extends CodeSecurityGetConfigurationForRepositorySuccess {const CodeSecurityGetConfigurationForRepositorySuccess200(this.data);

/// The decoded response payload.
final CodeSecurityConfigurationForRepository data;

 }
/// Response for 204.
final class CodeSecurityGetConfigurationForRepositorySuccess204 extends CodeSecurityGetConfigurationForRepositorySuccess {const CodeSecurityGetConfigurationForRepositorySuccess204();

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeSecurityGetConfigurationForRepositorySuccessUnknown extends CodeSecurityGetConfigurationForRepositorySuccess {const CodeSecurityGetConfigurationForRepositorySuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
