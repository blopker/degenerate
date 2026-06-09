// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/security-advisories`.
sealed class SecurityAdvisoriesCreateRepositoryAdvisoryError {const SecurityAdvisoriesCreateRepositoryAdvisoryError();

/// Parse the variant matching the response status code.
factory SecurityAdvisoriesCreateRepositoryAdvisoryError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => SecurityAdvisoriesCreateRepositoryAdvisoryError403.parse(response),
  404 => SecurityAdvisoriesCreateRepositoryAdvisoryError404.parse(response),
  422 => SecurityAdvisoriesCreateRepositoryAdvisoryError422.parse(response),
  _ => SecurityAdvisoriesCreateRepositoryAdvisoryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class SecurityAdvisoriesCreateRepositoryAdvisoryError403 extends SecurityAdvisoriesCreateRepositoryAdvisoryError {const SecurityAdvisoriesCreateRepositoryAdvisoryError403(this.data);

factory SecurityAdvisoriesCreateRepositoryAdvisoryError403.parse(ApiResponse response) { return SecurityAdvisoriesCreateRepositoryAdvisoryError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateRepositoryAdvisoryError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateRepositoryAdvisoryError403($data)'; } 
 }
/// The `404` response.
@immutable final class SecurityAdvisoriesCreateRepositoryAdvisoryError404 extends SecurityAdvisoriesCreateRepositoryAdvisoryError {const SecurityAdvisoriesCreateRepositoryAdvisoryError404(this.data);

factory SecurityAdvisoriesCreateRepositoryAdvisoryError404.parse(ApiResponse response) { return SecurityAdvisoriesCreateRepositoryAdvisoryError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateRepositoryAdvisoryError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateRepositoryAdvisoryError404($data)'; } 
 }
/// The `422` response.
@immutable final class SecurityAdvisoriesCreateRepositoryAdvisoryError422 extends SecurityAdvisoriesCreateRepositoryAdvisoryError {const SecurityAdvisoriesCreateRepositoryAdvisoryError422(this.data);

factory SecurityAdvisoriesCreateRepositoryAdvisoryError422.parse(ApiResponse response) { return SecurityAdvisoriesCreateRepositoryAdvisoryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateRepositoryAdvisoryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateRepositoryAdvisoryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecurityAdvisoriesCreateRepositoryAdvisoryError$Unknown extends SecurityAdvisoriesCreateRepositoryAdvisoryError {const SecurityAdvisoriesCreateRepositoryAdvisoryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateRepositoryAdvisoryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecurityAdvisoriesCreateRepositoryAdvisoryError.unknown($statusCode)'; } 
 }
