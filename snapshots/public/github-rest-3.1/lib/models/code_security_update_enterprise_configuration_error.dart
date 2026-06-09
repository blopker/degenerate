// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `PATCH /enterprises/{enterprise}/code-security/configurations/{configuration_id}`.
sealed class CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError();

/// Parse the variant matching the response status code.
factory CodeSecurityUpdateEnterpriseConfigurationError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodeSecurityUpdateEnterpriseConfigurationError304.parse(response),
  403 => CodeSecurityUpdateEnterpriseConfigurationError403.parse(response),
  404 => CodeSecurityUpdateEnterpriseConfigurationError404.parse(response),
  409 => CodeSecurityUpdateEnterpriseConfigurationError409.parse(response),
  _ => CodeSecurityUpdateEnterpriseConfigurationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodeSecurityUpdateEnterpriseConfigurationError304 extends CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError304();

factory CodeSecurityUpdateEnterpriseConfigurationError304.parse(ApiResponse _) { return const CodeSecurityUpdateEnterpriseConfigurationError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeSecurityUpdateEnterpriseConfigurationError304; } 
@override int get hashCode { return (CodeSecurityUpdateEnterpriseConfigurationError304).hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationError304()'; } 
 }
/// The `403` response.
@immutable final class CodeSecurityUpdateEnterpriseConfigurationError403 extends CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError403(this.data);

factory CodeSecurityUpdateEnterpriseConfigurationError403.parse(ApiResponse response) { return CodeSecurityUpdateEnterpriseConfigurationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeSecurityUpdateEnterpriseConfigurationError404 extends CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError404(this.data);

factory CodeSecurityUpdateEnterpriseConfigurationError404.parse(ApiResponse response) { return CodeSecurityUpdateEnterpriseConfigurationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationError404($data)'; } 
 }
/// The `409` response.
@immutable final class CodeSecurityUpdateEnterpriseConfigurationError409 extends CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError409(this.data);

factory CodeSecurityUpdateEnterpriseConfigurationError409.parse(ApiResponse response) { return CodeSecurityUpdateEnterpriseConfigurationError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationError409($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeSecurityUpdateEnterpriseConfigurationError$Unknown extends CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateEnterpriseConfigurationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeSecurityUpdateEnterpriseConfigurationError.unknown($statusCode)'; } 
 }
