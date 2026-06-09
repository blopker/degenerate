// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /user/codespaces/{codespace_name}`.
sealed class CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesDeleteForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodespacesDeleteForAuthenticatedUserError304.parse(response),
  401 => CodespacesDeleteForAuthenticatedUserError401.parse(response),
  403 => CodespacesDeleteForAuthenticatedUserError403.parse(response),
  404 => CodespacesDeleteForAuthenticatedUserError404.parse(response),
  500 => CodespacesDeleteForAuthenticatedUserError500.parse(response),
  _ => CodespacesDeleteForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodespacesDeleteForAuthenticatedUserError304 extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError304();

factory CodespacesDeleteForAuthenticatedUserError304.parse(ApiResponse _) { return const CodespacesDeleteForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesDeleteForAuthenticatedUserError304; } 
@override int get hashCode { return (CodespacesDeleteForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'CodespacesDeleteForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class CodespacesDeleteForAuthenticatedUserError401 extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError401(this.data);

factory CodespacesDeleteForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesDeleteForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesDeleteForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesDeleteForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesDeleteForAuthenticatedUserError403 extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError403(this.data);

factory CodespacesDeleteForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesDeleteForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesDeleteForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesDeleteForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesDeleteForAuthenticatedUserError404 extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError404(this.data);

factory CodespacesDeleteForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesDeleteForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesDeleteForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesDeleteForAuthenticatedUserError404($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesDeleteForAuthenticatedUserError500 extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError500(this.data);

factory CodespacesDeleteForAuthenticatedUserError500.parse(ApiResponse response) { return CodespacesDeleteForAuthenticatedUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesDeleteForAuthenticatedUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesDeleteForAuthenticatedUserError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesDeleteForAuthenticatedUserError$Unknown extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesDeleteForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesDeleteForAuthenticatedUserError.unknown($statusCode)'; } 
 }
