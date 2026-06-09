// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks`.
sealed class ReposUpdateStatusCheckProtectionError {const ReposUpdateStatusCheckProtectionError();

/// Parse the variant matching the response status code.
factory ReposUpdateStatusCheckProtectionError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposUpdateStatusCheckProtectionError404.parse(response),
  422 => ReposUpdateStatusCheckProtectionError422.parse(response),
  _ => ReposUpdateStatusCheckProtectionError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposUpdateStatusCheckProtectionError404 extends ReposUpdateStatusCheckProtectionError {const ReposUpdateStatusCheckProtectionError404(this.data);

factory ReposUpdateStatusCheckProtectionError404.parse(ApiResponse response) { return ReposUpdateStatusCheckProtectionError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateStatusCheckProtectionError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateStatusCheckProtectionError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposUpdateStatusCheckProtectionError422 extends ReposUpdateStatusCheckProtectionError {const ReposUpdateStatusCheckProtectionError422(this.data);

factory ReposUpdateStatusCheckProtectionError422.parse(ApiResponse response) { return ReposUpdateStatusCheckProtectionError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateStatusCheckProtectionError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateStatusCheckProtectionError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposUpdateStatusCheckProtectionError$Unknown extends ReposUpdateStatusCheckProtectionError {const ReposUpdateStatusCheckProtectionError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateStatusCheckProtectionError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposUpdateStatusCheckProtectionError.unknown($statusCode)'; } 
 }
