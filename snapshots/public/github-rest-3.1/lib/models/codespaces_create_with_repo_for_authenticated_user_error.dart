// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'codespaces_create_with_repo_for_authenticated_user_response503.dart';/// Error responses of `POST /repos/{owner}/{repo}/codespaces`.
sealed class CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesCreateWithRepoForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => CodespacesCreateWithRepoForAuthenticatedUserError400.parse(response),
  401 => CodespacesCreateWithRepoForAuthenticatedUserError401.parse(response),
  403 => CodespacesCreateWithRepoForAuthenticatedUserError403.parse(response),
  404 => CodespacesCreateWithRepoForAuthenticatedUserError404.parse(response),
  503 => CodespacesCreateWithRepoForAuthenticatedUserError503.parse(response),
  _ => CodespacesCreateWithRepoForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class CodespacesCreateWithRepoForAuthenticatedUserError400 extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError400(this.data);

factory CodespacesCreateWithRepoForAuthenticatedUserError400.parse(ApiResponse response) { return CodespacesCreateWithRepoForAuthenticatedUserError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithRepoForAuthenticatedUserError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateWithRepoForAuthenticatedUserError400($data)'; } 
 }
/// The `401` response.
@immutable final class CodespacesCreateWithRepoForAuthenticatedUserError401 extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError401(this.data);

factory CodespacesCreateWithRepoForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesCreateWithRepoForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithRepoForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateWithRepoForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesCreateWithRepoForAuthenticatedUserError403 extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError403(this.data);

factory CodespacesCreateWithRepoForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesCreateWithRepoForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithRepoForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateWithRepoForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesCreateWithRepoForAuthenticatedUserError404 extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError404(this.data);

factory CodespacesCreateWithRepoForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesCreateWithRepoForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithRepoForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateWithRepoForAuthenticatedUserError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodespacesCreateWithRepoForAuthenticatedUserError503 extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError503(this.data);

factory CodespacesCreateWithRepoForAuthenticatedUserError503.parse(ApiResponse response) { return CodespacesCreateWithRepoForAuthenticatedUserError503(CodespacesCreateWithRepoForAuthenticatedUserResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodespacesCreateWithRepoForAuthenticatedUserResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithRepoForAuthenticatedUserError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateWithRepoForAuthenticatedUserError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesCreateWithRepoForAuthenticatedUserError$Unknown extends CodespacesCreateWithRepoForAuthenticatedUserError {const CodespacesCreateWithRepoForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateWithRepoForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesCreateWithRepoForAuthenticatedUserError.unknown($statusCode)'; } 
 }
