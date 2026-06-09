// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/code-security/configurations/defaults`.
sealed class CodeSecurityGetDefaultConfigurationsError {const CodeSecurityGetDefaultConfigurationsError();

/// Parse the variant matching the response status code.
factory CodeSecurityGetDefaultConfigurationsError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodeSecurityGetDefaultConfigurationsError304.parse(response),
  403 => CodeSecurityGetDefaultConfigurationsError403.parse(response),
  404 => CodeSecurityGetDefaultConfigurationsError404.parse(response),
  _ => CodeSecurityGetDefaultConfigurationsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodeSecurityGetDefaultConfigurationsError304 extends CodeSecurityGetDefaultConfigurationsError {const CodeSecurityGetDefaultConfigurationsError304();

factory CodeSecurityGetDefaultConfigurationsError304.parse(ApiResponse _) { return const CodeSecurityGetDefaultConfigurationsError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeSecurityGetDefaultConfigurationsError304; } 
@override int get hashCode { return (CodeSecurityGetDefaultConfigurationsError304).hashCode; } 
@override String toString() { return 'CodeSecurityGetDefaultConfigurationsError304()'; } 
 }
/// The `403` response.
@immutable final class CodeSecurityGetDefaultConfigurationsError403 extends CodeSecurityGetDefaultConfigurationsError {const CodeSecurityGetDefaultConfigurationsError403(this.data);

factory CodeSecurityGetDefaultConfigurationsError403.parse(ApiResponse response) { return CodeSecurityGetDefaultConfigurationsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetDefaultConfigurationsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityGetDefaultConfigurationsError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeSecurityGetDefaultConfigurationsError404 extends CodeSecurityGetDefaultConfigurationsError {const CodeSecurityGetDefaultConfigurationsError404(this.data);

factory CodeSecurityGetDefaultConfigurationsError404.parse(ApiResponse response) { return CodeSecurityGetDefaultConfigurationsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetDefaultConfigurationsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityGetDefaultConfigurationsError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeSecurityGetDefaultConfigurationsError$Unknown extends CodeSecurityGetDefaultConfigurationsError {const CodeSecurityGetDefaultConfigurationsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetDefaultConfigurationsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeSecurityGetDefaultConfigurationsError.unknown($statusCode)'; } 
 }
