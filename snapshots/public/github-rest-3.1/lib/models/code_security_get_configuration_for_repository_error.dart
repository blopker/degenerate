// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-security-configuration`.
sealed class CodeSecurityGetConfigurationForRepositoryError {const CodeSecurityGetConfigurationForRepositoryError();

/// Parse the variant matching the response status code.
factory CodeSecurityGetConfigurationForRepositoryError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodeSecurityGetConfigurationForRepositoryError304.parse(response),
  403 => CodeSecurityGetConfigurationForRepositoryError403.parse(response),
  404 => CodeSecurityGetConfigurationForRepositoryError404.parse(response),
  _ => CodeSecurityGetConfigurationForRepositoryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodeSecurityGetConfigurationForRepositoryError304 extends CodeSecurityGetConfigurationForRepositoryError {const CodeSecurityGetConfigurationForRepositoryError304();

factory CodeSecurityGetConfigurationForRepositoryError304.parse(ApiResponse _) { return const CodeSecurityGetConfigurationForRepositoryError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeSecurityGetConfigurationForRepositoryError304; } 
@override int get hashCode { return (CodeSecurityGetConfigurationForRepositoryError304).hashCode; } 
@override String toString() { return 'CodeSecurityGetConfigurationForRepositoryError304()'; } 
 }
/// The `403` response.
@immutable final class CodeSecurityGetConfigurationForRepositoryError403 extends CodeSecurityGetConfigurationForRepositoryError {const CodeSecurityGetConfigurationForRepositoryError403(this.data);

factory CodeSecurityGetConfigurationForRepositoryError403.parse(ApiResponse response) { return CodeSecurityGetConfigurationForRepositoryError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetConfigurationForRepositoryError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityGetConfigurationForRepositoryError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeSecurityGetConfigurationForRepositoryError404 extends CodeSecurityGetConfigurationForRepositoryError {const CodeSecurityGetConfigurationForRepositoryError404(this.data);

factory CodeSecurityGetConfigurationForRepositoryError404.parse(ApiResponse response) { return CodeSecurityGetConfigurationForRepositoryError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetConfigurationForRepositoryError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityGetConfigurationForRepositoryError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeSecurityGetConfigurationForRepositoryError$Unknown extends CodeSecurityGetConfigurationForRepositoryError {const CodeSecurityGetConfigurationForRepositoryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetConfigurationForRepositoryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeSecurityGetConfigurationForRepositoryError.unknown($statusCode)'; } 
 }
