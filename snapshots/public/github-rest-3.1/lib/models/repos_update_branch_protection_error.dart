// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `PUT /repos/{owner}/{repo}/branches/{branch}/protection`.
sealed class ReposUpdateBranchProtectionError {const ReposUpdateBranchProtectionError();

/// Parse the variant matching the response status code.
factory ReposUpdateBranchProtectionError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ReposUpdateBranchProtectionError403.parse(response),
  404 => ReposUpdateBranchProtectionError404.parse(response),
  422 => ReposUpdateBranchProtectionError422.parse(response),
  _ => ReposUpdateBranchProtectionError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ReposUpdateBranchProtectionError403 extends ReposUpdateBranchProtectionError {const ReposUpdateBranchProtectionError403(this.data);

factory ReposUpdateBranchProtectionError403.parse(ApiResponse response) { return ReposUpdateBranchProtectionError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateBranchProtectionError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateBranchProtectionError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposUpdateBranchProtectionError404 extends ReposUpdateBranchProtectionError {const ReposUpdateBranchProtectionError404(this.data);

factory ReposUpdateBranchProtectionError404.parse(ApiResponse response) { return ReposUpdateBranchProtectionError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateBranchProtectionError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateBranchProtectionError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposUpdateBranchProtectionError422 extends ReposUpdateBranchProtectionError {const ReposUpdateBranchProtectionError422(this.data);

factory ReposUpdateBranchProtectionError422.parse(ApiResponse response) { return ReposUpdateBranchProtectionError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateBranchProtectionError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateBranchProtectionError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposUpdateBranchProtectionError$Unknown extends ReposUpdateBranchProtectionError {const ReposUpdateBranchProtectionError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateBranchProtectionError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposUpdateBranchProtectionError.unknown($statusCode)'; } 
 }
