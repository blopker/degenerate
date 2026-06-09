// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `GET /advisories`.
sealed class SecurityAdvisoriesListGlobalAdvisoriesError {const SecurityAdvisoriesListGlobalAdvisoriesError();

/// Parse the variant matching the response status code.
factory SecurityAdvisoriesListGlobalAdvisoriesError.parse(ApiResponse response) { return switch (response.statusCode) {
  422 => SecurityAdvisoriesListGlobalAdvisoriesError422.parse(response),
  429 => SecurityAdvisoriesListGlobalAdvisoriesError429.parse(response),
  _ => SecurityAdvisoriesListGlobalAdvisoriesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `422` response.
@immutable final class SecurityAdvisoriesListGlobalAdvisoriesError422 extends SecurityAdvisoriesListGlobalAdvisoriesError {const SecurityAdvisoriesListGlobalAdvisoriesError422(this.data);

factory SecurityAdvisoriesListGlobalAdvisoriesError422.parse(ApiResponse response) { return SecurityAdvisoriesListGlobalAdvisoriesError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesListGlobalAdvisoriesError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesListGlobalAdvisoriesError422($data)'; } 
 }
/// The `429` response.
@immutable final class SecurityAdvisoriesListGlobalAdvisoriesError429 extends SecurityAdvisoriesListGlobalAdvisoriesError {const SecurityAdvisoriesListGlobalAdvisoriesError429(this.data);

factory SecurityAdvisoriesListGlobalAdvisoriesError429.parse(ApiResponse response) { return SecurityAdvisoriesListGlobalAdvisoriesError429(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesListGlobalAdvisoriesError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesListGlobalAdvisoriesError429($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecurityAdvisoriesListGlobalAdvisoriesError$Unknown extends SecurityAdvisoriesListGlobalAdvisoriesError {const SecurityAdvisoriesListGlobalAdvisoriesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesListGlobalAdvisoriesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecurityAdvisoriesListGlobalAdvisoriesError.unknown($statusCode)'; } 
 }
