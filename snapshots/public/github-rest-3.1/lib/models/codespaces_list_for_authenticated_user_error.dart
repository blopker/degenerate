// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/codespaces`.
sealed class CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesListForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodespacesListForAuthenticatedUserError304.parse(response),
  401 => CodespacesListForAuthenticatedUserError401.parse(response),
  403 => CodespacesListForAuthenticatedUserError403.parse(response),
  404 => CodespacesListForAuthenticatedUserError404.parse(response),
  500 => CodespacesListForAuthenticatedUserError500.parse(response),
  _ => CodespacesListForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodespacesListForAuthenticatedUserError304 extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError304();

factory CodespacesListForAuthenticatedUserError304.parse(ApiResponse _) { return const CodespacesListForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesListForAuthenticatedUserError304; } 
@override int get hashCode { return (CodespacesListForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'CodespacesListForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class CodespacesListForAuthenticatedUserError401 extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError401(this.data);

factory CodespacesListForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesListForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesListForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesListForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesListForAuthenticatedUserError403 extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError403(this.data);

factory CodespacesListForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesListForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesListForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesListForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesListForAuthenticatedUserError404 extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError404(this.data);

factory CodespacesListForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesListForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesListForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesListForAuthenticatedUserError404($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesListForAuthenticatedUserError500 extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError500(this.data);

factory CodespacesListForAuthenticatedUserError500.parse(ApiResponse response) { return CodespacesListForAuthenticatedUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesListForAuthenticatedUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesListForAuthenticatedUserError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesListForAuthenticatedUserError$Unknown extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesListForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesListForAuthenticatedUserError.unknown($statusCode)'; } 
 }
