// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/codespaces/{codespace_name}`.
sealed class CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesGetForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodespacesGetForAuthenticatedUserError304.parse(response),
  401 => CodespacesGetForAuthenticatedUserError401.parse(response),
  403 => CodespacesGetForAuthenticatedUserError403.parse(response),
  404 => CodespacesGetForAuthenticatedUserError404.parse(response),
  500 => CodespacesGetForAuthenticatedUserError500.parse(response),
  _ => CodespacesGetForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodespacesGetForAuthenticatedUserError304 extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError304();

factory CodespacesGetForAuthenticatedUserError304.parse(ApiResponse _) { return const CodespacesGetForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesGetForAuthenticatedUserError304; } 
@override int get hashCode { return (CodespacesGetForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'CodespacesGetForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class CodespacesGetForAuthenticatedUserError401 extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError401(this.data);

factory CodespacesGetForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesGetForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesGetForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesGetForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesGetForAuthenticatedUserError403 extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError403(this.data);

factory CodespacesGetForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesGetForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesGetForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesGetForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesGetForAuthenticatedUserError404 extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError404(this.data);

factory CodespacesGetForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesGetForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesGetForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesGetForAuthenticatedUserError404($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesGetForAuthenticatedUserError500 extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError500(this.data);

factory CodespacesGetForAuthenticatedUserError500.parse(ApiResponse response) { return CodespacesGetForAuthenticatedUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesGetForAuthenticatedUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesGetForAuthenticatedUserError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesGetForAuthenticatedUserError$Unknown extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesGetForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesGetForAuthenticatedUserError.unknown($statusCode)'; } 
 }
