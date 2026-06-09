// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_security_configuration_for_repository.dart';/// Success responses of `GET /repos/{owner}/{repo}/code-security-configuration`.
sealed class CodeSecurityGetConfigurationForRepositorySuccess {const CodeSecurityGetConfigurationForRepositorySuccess();

/// Parse the variant matching the response status code.
factory CodeSecurityGetConfigurationForRepositorySuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => CodeSecurityGetConfigurationForRepositorySuccess200.parse(response),
  204 => CodeSecurityGetConfigurationForRepositorySuccess204.parse(response),
  _ => CodeSecurityGetConfigurationForRepositorySuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class CodeSecurityGetConfigurationForRepositorySuccess200 extends CodeSecurityGetConfigurationForRepositorySuccess {const CodeSecurityGetConfigurationForRepositorySuccess200(this.data);

factory CodeSecurityGetConfigurationForRepositorySuccess200.parse(ApiResponse response) { return CodeSecurityGetConfigurationForRepositorySuccess200(CodeSecurityConfigurationForRepository.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeSecurityConfigurationForRepository data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetConfigurationForRepositorySuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeSecurityGetConfigurationForRepositorySuccess200($data)'; } 
 }
/// The `204` response.
@immutable final class CodeSecurityGetConfigurationForRepositorySuccess204 extends CodeSecurityGetConfigurationForRepositorySuccess {const CodeSecurityGetConfigurationForRepositorySuccess204();

factory CodeSecurityGetConfigurationForRepositorySuccess204.parse(ApiResponse _) { return const CodeSecurityGetConfigurationForRepositorySuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeSecurityGetConfigurationForRepositorySuccess204; } 
@override int get hashCode { return (CodeSecurityGetConfigurationForRepositorySuccess204).hashCode; } 
@override String toString() { return 'CodeSecurityGetConfigurationForRepositorySuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeSecurityGetConfigurationForRepositorySuccess$Unknown extends CodeSecurityGetConfigurationForRepositorySuccess {const CodeSecurityGetConfigurationForRepositorySuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityGetConfigurationForRepositorySuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeSecurityGetConfigurationForRepositorySuccess.unknown($statusCode)'; } 
 }
