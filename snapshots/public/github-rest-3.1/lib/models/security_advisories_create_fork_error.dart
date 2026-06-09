// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/security-advisories/{ghsa_id}/forks`.
sealed class SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError();

/// Parse the variant matching the response status code.
factory SecurityAdvisoriesCreateForkError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => SecurityAdvisoriesCreateForkError400.parse(response),
  403 => SecurityAdvisoriesCreateForkError403.parse(response),
  404 => SecurityAdvisoriesCreateForkError404.parse(response),
  422 => SecurityAdvisoriesCreateForkError422.parse(response),
  _ => SecurityAdvisoriesCreateForkError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class SecurityAdvisoriesCreateForkError400 extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError400(this.data);

factory SecurityAdvisoriesCreateForkError400.parse(ApiResponse response) { return SecurityAdvisoriesCreateForkError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateForkError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateForkError400($data)'; } 
 }
/// The `403` response.
@immutable final class SecurityAdvisoriesCreateForkError403 extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError403(this.data);

factory SecurityAdvisoriesCreateForkError403.parse(ApiResponse response) { return SecurityAdvisoriesCreateForkError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateForkError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateForkError403($data)'; } 
 }
/// The `404` response.
@immutable final class SecurityAdvisoriesCreateForkError404 extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError404(this.data);

factory SecurityAdvisoriesCreateForkError404.parse(ApiResponse response) { return SecurityAdvisoriesCreateForkError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateForkError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateForkError404($data)'; } 
 }
/// The `422` response.
@immutable final class SecurityAdvisoriesCreateForkError422 extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError422(this.data);

factory SecurityAdvisoriesCreateForkError422.parse(ApiResponse response) { return SecurityAdvisoriesCreateForkError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateForkError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesCreateForkError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecurityAdvisoriesCreateForkError$Unknown extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesCreateForkError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecurityAdvisoriesCreateForkError.unknown($statusCode)'; } 
 }
