// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /user/codespaces/{codespace_name}/publish`.
sealed class CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesPublishForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CodespacesPublishForAuthenticatedUserError401.parse(response),
  403 => CodespacesPublishForAuthenticatedUserError403.parse(response),
  404 => CodespacesPublishForAuthenticatedUserError404.parse(response),
  422 => CodespacesPublishForAuthenticatedUserError422.parse(response),
  _ => CodespacesPublishForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CodespacesPublishForAuthenticatedUserError401 extends CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError401(this.data);

factory CodespacesPublishForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesPublishForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesPublishForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesPublishForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesPublishForAuthenticatedUserError403 extends CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError403(this.data);

factory CodespacesPublishForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesPublishForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesPublishForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesPublishForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesPublishForAuthenticatedUserError404 extends CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError404(this.data);

factory CodespacesPublishForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesPublishForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesPublishForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesPublishForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class CodespacesPublishForAuthenticatedUserError422 extends CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError422(this.data);

factory CodespacesPublishForAuthenticatedUserError422.parse(ApiResponse response) { return CodespacesPublishForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesPublishForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesPublishForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesPublishForAuthenticatedUserError$Unknown extends CodespacesPublishForAuthenticatedUserError {const CodespacesPublishForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesPublishForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesPublishForAuthenticatedUserError.unknown($statusCode)'; } 
 }
