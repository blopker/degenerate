// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `PUT /orgs/{org}/copilot/content_exclusion`.
sealed class CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError();

/// Parse the variant matching the response status code.
factory CopilotSetCopilotContentExclusionForOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CopilotSetCopilotContentExclusionForOrganizationError401.parse(response),
  403 => CopilotSetCopilotContentExclusionForOrganizationError403.parse(response),
  404 => CopilotSetCopilotContentExclusionForOrganizationError404.parse(response),
  413 => CopilotSetCopilotContentExclusionForOrganizationError413.parse(response),
  422 => CopilotSetCopilotContentExclusionForOrganizationError422.parse(response),
  500 => CopilotSetCopilotContentExclusionForOrganizationError500.parse(response),
  _ => CopilotSetCopilotContentExclusionForOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CopilotSetCopilotContentExclusionForOrganizationError401 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError401(this.data);

factory CopilotSetCopilotContentExclusionForOrganizationError401.parse(ApiResponse response) { return CopilotSetCopilotContentExclusionForOrganizationError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotSetCopilotContentExclusionForOrganizationError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotSetCopilotContentExclusionForOrganizationError401($data)'; } 
 }
/// The `403` response.
@immutable final class CopilotSetCopilotContentExclusionForOrganizationError403 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError403(this.data);

factory CopilotSetCopilotContentExclusionForOrganizationError403.parse(ApiResponse response) { return CopilotSetCopilotContentExclusionForOrganizationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotSetCopilotContentExclusionForOrganizationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotSetCopilotContentExclusionForOrganizationError403($data)'; } 
 }
/// The `404` response.
@immutable final class CopilotSetCopilotContentExclusionForOrganizationError404 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError404(this.data);

factory CopilotSetCopilotContentExclusionForOrganizationError404.parse(ApiResponse response) { return CopilotSetCopilotContentExclusionForOrganizationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotSetCopilotContentExclusionForOrganizationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotSetCopilotContentExclusionForOrganizationError404($data)'; } 
 }
/// The `413` response.
@immutable final class CopilotSetCopilotContentExclusionForOrganizationError413 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError413(this.data);

factory CopilotSetCopilotContentExclusionForOrganizationError413.parse(ApiResponse response) { return CopilotSetCopilotContentExclusionForOrganizationError413(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotSetCopilotContentExclusionForOrganizationError413 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotSetCopilotContentExclusionForOrganizationError413($data)'; } 
 }
/// The `422` response.
@immutable final class CopilotSetCopilotContentExclusionForOrganizationError422 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError422(this.data);

factory CopilotSetCopilotContentExclusionForOrganizationError422.parse(ApiResponse response) { return CopilotSetCopilotContentExclusionForOrganizationError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotSetCopilotContentExclusionForOrganizationError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotSetCopilotContentExclusionForOrganizationError422($data)'; } 
 }
/// The `500` response.
@immutable final class CopilotSetCopilotContentExclusionForOrganizationError500 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError500(this.data);

factory CopilotSetCopilotContentExclusionForOrganizationError500.parse(ApiResponse response) { return CopilotSetCopilotContentExclusionForOrganizationError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotSetCopilotContentExclusionForOrganizationError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotSetCopilotContentExclusionForOrganizationError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CopilotSetCopilotContentExclusionForOrganizationError$Unknown extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotSetCopilotContentExclusionForOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CopilotSetCopilotContentExclusionForOrganizationError.unknown($statusCode)'; } 
 }
