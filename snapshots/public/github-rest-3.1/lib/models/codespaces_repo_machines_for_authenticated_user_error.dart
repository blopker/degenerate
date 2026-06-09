// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/codespaces/machines`.
sealed class CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesRepoMachinesForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodespacesRepoMachinesForAuthenticatedUserError304.parse(response),
  401 => CodespacesRepoMachinesForAuthenticatedUserError401.parse(response),
  403 => CodespacesRepoMachinesForAuthenticatedUserError403.parse(response),
  404 => CodespacesRepoMachinesForAuthenticatedUserError404.parse(response),
  500 => CodespacesRepoMachinesForAuthenticatedUserError500.parse(response),
  _ => CodespacesRepoMachinesForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodespacesRepoMachinesForAuthenticatedUserError304 extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError304();

factory CodespacesRepoMachinesForAuthenticatedUserError304.parse(ApiResponse _) { return const CodespacesRepoMachinesForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesRepoMachinesForAuthenticatedUserError304; } 
@override int get hashCode { return (CodespacesRepoMachinesForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'CodespacesRepoMachinesForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class CodespacesRepoMachinesForAuthenticatedUserError401 extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError401(this.data);

factory CodespacesRepoMachinesForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesRepoMachinesForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesRepoMachinesForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesRepoMachinesForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesRepoMachinesForAuthenticatedUserError403 extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError403(this.data);

factory CodespacesRepoMachinesForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesRepoMachinesForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesRepoMachinesForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesRepoMachinesForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesRepoMachinesForAuthenticatedUserError404 extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError404(this.data);

factory CodespacesRepoMachinesForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesRepoMachinesForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesRepoMachinesForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesRepoMachinesForAuthenticatedUserError404($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesRepoMachinesForAuthenticatedUserError500 extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError500(this.data);

factory CodespacesRepoMachinesForAuthenticatedUserError500.parse(ApiResponse response) { return CodespacesRepoMachinesForAuthenticatedUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesRepoMachinesForAuthenticatedUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesRepoMachinesForAuthenticatedUserError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesRepoMachinesForAuthenticatedUserError$Unknown extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesRepoMachinesForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesRepoMachinesForAuthenticatedUserError.unknown($statusCode)'; } 
 }
