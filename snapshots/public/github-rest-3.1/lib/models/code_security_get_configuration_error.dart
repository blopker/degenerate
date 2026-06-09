// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/code-security/configurations/{configuration_id}`.
sealed class CodeSecurityGetConfigurationError {const CodeSecurityGetConfigurationError();

/// Parse the variant matching the response status code.
factory CodeSecurityGetConfigurationError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodeSecurityGetConfigurationError304.parse(response),
  403 => CodeSecurityGetConfigurationError403.parse(response),
  404 => CodeSecurityGetConfigurationError404.parse(response),
  _ => CodeSecurityGetConfigurationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodeSecurityGetConfigurationError304 extends CodeSecurityGetConfigurationError {const CodeSecurityGetConfigurationError304();

factory CodeSecurityGetConfigurationError304.parse(ApiResponse _) { return const CodeSecurityGetConfigurationError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeSecurityGetConfigurationError304; } 
@override int get hashCode { return (CodeSecurityGetConfigurationError304).hashCode; } 
@override String toString() { return 'CodeSecurityGetConfigurationError304()'; } 
 }
/// The `403` response.
@immutable final class CodeSecurityGetConfigurationError403 extends CodeSecurityGetConfigurationError {const CodeSecurityGetConfigurationError403(this.data);

factory CodeSecurityGetConfigurationError403.parse(ApiResponse response) { return CodeSecurityGetConfigurationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetConfigurationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityGetConfigurationError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeSecurityGetConfigurationError404 extends CodeSecurityGetConfigurationError {const CodeSecurityGetConfigurationError404(this.data);

factory CodeSecurityGetConfigurationError404.parse(ApiResponse response) { return CodeSecurityGetConfigurationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetConfigurationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityGetConfigurationError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeSecurityGetConfigurationError$Unknown extends CodeSecurityGetConfigurationError {const CodeSecurityGetConfigurationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetConfigurationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeSecurityGetConfigurationError.unknown($statusCode)'; } 
 }
