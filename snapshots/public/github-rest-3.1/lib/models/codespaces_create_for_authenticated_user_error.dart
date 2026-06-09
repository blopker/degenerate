// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'codespaces_create_for_authenticated_user_response503.dart';/// Error responses of `POST /user/codespaces`.
sealed class CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesCreateForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CodespacesCreateForAuthenticatedUserError401.parse(response),
  403 => CodespacesCreateForAuthenticatedUserError403.parse(response),
  404 => CodespacesCreateForAuthenticatedUserError404.parse(response),
  503 => CodespacesCreateForAuthenticatedUserError503.parse(response),
  _ => CodespacesCreateForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CodespacesCreateForAuthenticatedUserError401 extends CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError401(this.data);

factory CodespacesCreateForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesCreateForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesCreateForAuthenticatedUserError403 extends CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError403(this.data);

factory CodespacesCreateForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesCreateForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesCreateForAuthenticatedUserError404 extends CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError404(this.data);

factory CodespacesCreateForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesCreateForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateForAuthenticatedUserError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodespacesCreateForAuthenticatedUserError503 extends CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError503(this.data);

factory CodespacesCreateForAuthenticatedUserError503.parse(ApiResponse response) { return CodespacesCreateForAuthenticatedUserError503(CodespacesCreateForAuthenticatedUserResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodespacesCreateForAuthenticatedUserResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateForAuthenticatedUserError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateForAuthenticatedUserError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesCreateForAuthenticatedUserError$Unknown extends CodespacesCreateForAuthenticatedUserError {const CodespacesCreateForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesCreateForAuthenticatedUserError.unknown($statusCode)'; } 
 }
