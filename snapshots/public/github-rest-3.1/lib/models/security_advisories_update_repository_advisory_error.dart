// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/security-advisories/{ghsa_id}`.
sealed class SecurityAdvisoriesUpdateRepositoryAdvisoryError {const SecurityAdvisoriesUpdateRepositoryAdvisoryError();

/// Parse the variant matching the response status code.
factory SecurityAdvisoriesUpdateRepositoryAdvisoryError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => SecurityAdvisoriesUpdateRepositoryAdvisoryError403.parse(response),
  404 => SecurityAdvisoriesUpdateRepositoryAdvisoryError404.parse(response),
  422 => SecurityAdvisoriesUpdateRepositoryAdvisoryError422.parse(response),
  _ => SecurityAdvisoriesUpdateRepositoryAdvisoryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class SecurityAdvisoriesUpdateRepositoryAdvisoryError403 extends SecurityAdvisoriesUpdateRepositoryAdvisoryError {const SecurityAdvisoriesUpdateRepositoryAdvisoryError403(this.data);

factory SecurityAdvisoriesUpdateRepositoryAdvisoryError403.parse(ApiResponse response) { return SecurityAdvisoriesUpdateRepositoryAdvisoryError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesUpdateRepositoryAdvisoryError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesUpdateRepositoryAdvisoryError403($data)'; } 
 }
/// The `404` response.
@immutable final class SecurityAdvisoriesUpdateRepositoryAdvisoryError404 extends SecurityAdvisoriesUpdateRepositoryAdvisoryError {const SecurityAdvisoriesUpdateRepositoryAdvisoryError404(this.data);

factory SecurityAdvisoriesUpdateRepositoryAdvisoryError404.parse(ApiResponse response) { return SecurityAdvisoriesUpdateRepositoryAdvisoryError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesUpdateRepositoryAdvisoryError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesUpdateRepositoryAdvisoryError404($data)'; } 
 }
/// The `422` response.
@immutable final class SecurityAdvisoriesUpdateRepositoryAdvisoryError422 extends SecurityAdvisoriesUpdateRepositoryAdvisoryError {const SecurityAdvisoriesUpdateRepositoryAdvisoryError422(this.data);

factory SecurityAdvisoriesUpdateRepositoryAdvisoryError422.parse(ApiResponse response) { return SecurityAdvisoriesUpdateRepositoryAdvisoryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesUpdateRepositoryAdvisoryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesUpdateRepositoryAdvisoryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecurityAdvisoriesUpdateRepositoryAdvisoryError$Unknown extends SecurityAdvisoriesUpdateRepositoryAdvisoryError {const SecurityAdvisoriesUpdateRepositoryAdvisoryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesUpdateRepositoryAdvisoryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecurityAdvisoriesUpdateRepositoryAdvisoryError.unknown($statusCode)'; } 
 }
