// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/codespaces/{codespace_name}/machines`.
sealed class CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesCodespaceMachinesForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodespacesCodespaceMachinesForAuthenticatedUserError304.parse(response),
  401 => CodespacesCodespaceMachinesForAuthenticatedUserError401.parse(response),
  403 => CodespacesCodespaceMachinesForAuthenticatedUserError403.parse(response),
  404 => CodespacesCodespaceMachinesForAuthenticatedUserError404.parse(response),
  500 => CodespacesCodespaceMachinesForAuthenticatedUserError500.parse(response),
  _ => CodespacesCodespaceMachinesForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodespacesCodespaceMachinesForAuthenticatedUserError304 extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError304();

factory CodespacesCodespaceMachinesForAuthenticatedUserError304.parse(ApiResponse _) { return const CodespacesCodespaceMachinesForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesCodespaceMachinesForAuthenticatedUserError304; } 
@override int get hashCode { return (CodespacesCodespaceMachinesForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'CodespacesCodespaceMachinesForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class CodespacesCodespaceMachinesForAuthenticatedUserError401 extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError401(this.data);

factory CodespacesCodespaceMachinesForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesCodespaceMachinesForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCodespaceMachinesForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCodespaceMachinesForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesCodespaceMachinesForAuthenticatedUserError403 extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError403(this.data);

factory CodespacesCodespaceMachinesForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesCodespaceMachinesForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCodespaceMachinesForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCodespaceMachinesForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesCodespaceMachinesForAuthenticatedUserError404 extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError404(this.data);

factory CodespacesCodespaceMachinesForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesCodespaceMachinesForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCodespaceMachinesForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCodespaceMachinesForAuthenticatedUserError404($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesCodespaceMachinesForAuthenticatedUserError500 extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError500(this.data);

factory CodespacesCodespaceMachinesForAuthenticatedUserError500.parse(ApiResponse response) { return CodespacesCodespaceMachinesForAuthenticatedUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCodespaceMachinesForAuthenticatedUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCodespaceMachinesForAuthenticatedUserError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesCodespaceMachinesForAuthenticatedUserError$Unknown extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCodespaceMachinesForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesCodespaceMachinesForAuthenticatedUserError.unknown($statusCode)'; } 
 }
