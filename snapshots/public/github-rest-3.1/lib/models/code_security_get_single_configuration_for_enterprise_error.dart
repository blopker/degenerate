// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /enterprises/{enterprise}/code-security/configurations/{configuration_id}`.
sealed class CodeSecurityGetSingleConfigurationForEnterpriseError {const CodeSecurityGetSingleConfigurationForEnterpriseError();

/// Parse the variant matching the response status code.
factory CodeSecurityGetSingleConfigurationForEnterpriseError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodeSecurityGetSingleConfigurationForEnterpriseError304.parse(response),
  403 => CodeSecurityGetSingleConfigurationForEnterpriseError403.parse(response),
  404 => CodeSecurityGetSingleConfigurationForEnterpriseError404.parse(response),
  _ => CodeSecurityGetSingleConfigurationForEnterpriseError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodeSecurityGetSingleConfigurationForEnterpriseError304 extends CodeSecurityGetSingleConfigurationForEnterpriseError {const CodeSecurityGetSingleConfigurationForEnterpriseError304();

factory CodeSecurityGetSingleConfigurationForEnterpriseError304.parse(ApiResponse _) { return const CodeSecurityGetSingleConfigurationForEnterpriseError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeSecurityGetSingleConfigurationForEnterpriseError304; } 
@override int get hashCode { return (CodeSecurityGetSingleConfigurationForEnterpriseError304).hashCode; } 
@override String toString() { return 'CodeSecurityGetSingleConfigurationForEnterpriseError304()'; } 
 }
/// The `403` response.
@immutable final class CodeSecurityGetSingleConfigurationForEnterpriseError403 extends CodeSecurityGetSingleConfigurationForEnterpriseError {const CodeSecurityGetSingleConfigurationForEnterpriseError403(this.data);

factory CodeSecurityGetSingleConfigurationForEnterpriseError403.parse(ApiResponse response) { return CodeSecurityGetSingleConfigurationForEnterpriseError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetSingleConfigurationForEnterpriseError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityGetSingleConfigurationForEnterpriseError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeSecurityGetSingleConfigurationForEnterpriseError404 extends CodeSecurityGetSingleConfigurationForEnterpriseError {const CodeSecurityGetSingleConfigurationForEnterpriseError404(this.data);

factory CodeSecurityGetSingleConfigurationForEnterpriseError404.parse(ApiResponse response) { return CodeSecurityGetSingleConfigurationForEnterpriseError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetSingleConfigurationForEnterpriseError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityGetSingleConfigurationForEnterpriseError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeSecurityGetSingleConfigurationForEnterpriseError$Unknown extends CodeSecurityGetSingleConfigurationForEnterpriseError {const CodeSecurityGetSingleConfigurationForEnterpriseError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetSingleConfigurationForEnterpriseError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeSecurityGetSingleConfigurationForEnterpriseError.unknown($statusCode)'; } 
 }
