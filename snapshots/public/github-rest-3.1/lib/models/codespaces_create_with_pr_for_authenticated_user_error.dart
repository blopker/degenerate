// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'codespaces_create_with_pr_for_authenticated_user_response503.dart';/// Error responses of `POST /repos/{owner}/{repo}/pulls/{pull_number}/codespaces`.
sealed class CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesCreateWithPrForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CodespacesCreateWithPrForAuthenticatedUserError401.parse(response),
  403 => CodespacesCreateWithPrForAuthenticatedUserError403.parse(response),
  404 => CodespacesCreateWithPrForAuthenticatedUserError404.parse(response),
  503 => CodespacesCreateWithPrForAuthenticatedUserError503.parse(response),
  _ => CodespacesCreateWithPrForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CodespacesCreateWithPrForAuthenticatedUserError401 extends CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError401(this.data);

factory CodespacesCreateWithPrForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesCreateWithPrForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithPrForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateWithPrForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesCreateWithPrForAuthenticatedUserError403 extends CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError403(this.data);

factory CodespacesCreateWithPrForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesCreateWithPrForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithPrForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateWithPrForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesCreateWithPrForAuthenticatedUserError404 extends CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError404(this.data);

factory CodespacesCreateWithPrForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesCreateWithPrForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithPrForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateWithPrForAuthenticatedUserError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodespacesCreateWithPrForAuthenticatedUserError503 extends CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError503(this.data);

factory CodespacesCreateWithPrForAuthenticatedUserError503.parse(ApiResponse response) { return CodespacesCreateWithPrForAuthenticatedUserError503(CodespacesCreateWithPrForAuthenticatedUserResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodespacesCreateWithPrForAuthenticatedUserResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithPrForAuthenticatedUserError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateWithPrForAuthenticatedUserError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesCreateWithPrForAuthenticatedUserError$Unknown extends CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithPrForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesCreateWithPrForAuthenticatedUserError.unknown($statusCode)'; } 
 }
