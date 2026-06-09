// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_security_configuration.dart';/// Success responses of `PATCH /orgs/{org}/code-security/configurations/{configuration_id}`.
sealed class CodeSecurityUpdateConfigurationSuccess {const CodeSecurityUpdateConfigurationSuccess();

/// Parse the variant matching the response status code.
factory CodeSecurityUpdateConfigurationSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => CodeSecurityUpdateConfigurationSuccess200.parse(response),
  204 => CodeSecurityUpdateConfigurationSuccess204.parse(response),
  _ => CodeSecurityUpdateConfigurationSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class CodeSecurityUpdateConfigurationSuccess200 extends CodeSecurityUpdateConfigurationSuccess {const CodeSecurityUpdateConfigurationSuccess200(this.data);

factory CodeSecurityUpdateConfigurationSuccess200.parse(ApiResponse response) { return CodeSecurityUpdateConfigurationSuccess200(CodeSecurityConfiguration.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeSecurityConfiguration data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateConfigurationSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityUpdateConfigurationSuccess200($data)'; } 
 }
/// The `204` response.
@immutable final class CodeSecurityUpdateConfigurationSuccess204 extends CodeSecurityUpdateConfigurationSuccess {const CodeSecurityUpdateConfigurationSuccess204();

factory CodeSecurityUpdateConfigurationSuccess204.parse(ApiResponse _) { return const CodeSecurityUpdateConfigurationSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeSecurityUpdateConfigurationSuccess204; } 
@override int get hashCode { return (CodeSecurityUpdateConfigurationSuccess204).hashCode; } 
@override String toString() { return 'CodeSecurityUpdateConfigurationSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeSecurityUpdateConfigurationSuccess$Unknown extends CodeSecurityUpdateConfigurationSuccess {const CodeSecurityUpdateConfigurationSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityUpdateConfigurationSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeSecurityUpdateConfigurationSuccess.unknown($statusCode)'; } 
 }
