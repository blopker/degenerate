// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/security-advisories/{ghsa_id}/cve`.
sealed class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError();

/// Parse the variant matching the response status code.
factory SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400.parse(response),
  403 => SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError403.parse(response),
  404 => SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError404.parse(response),
  422 => SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError422.parse(response),
  _ => SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400 extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400(this.data);

factory SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400.parse(ApiResponse response) { return SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400($data)'; } 
 }
/// The `403` response.
@immutable final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError403 extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError403(this.data);

factory SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError403.parse(ApiResponse response) { return SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError403($data)'; } 
 }
/// The `404` response.
@immutable final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError404 extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError404(this.data);

factory SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError404.parse(ApiResponse response) { return SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError404($data)'; } 
 }
/// The `422` response.
@immutable final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError422 extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError422(this.data);

factory SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError422.parse(ApiResponse response) { return SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError$Unknown extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError.unknown($statusCode)'; } 
 }
