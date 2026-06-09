// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /orgs/{org}/members/{username}/codespaces/{codespace_name}`.
sealed class CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError();

/// Parse the variant matching the response status code.
factory CodespacesDeleteFromOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodespacesDeleteFromOrganizationError304.parse(response),
  401 => CodespacesDeleteFromOrganizationError401.parse(response),
  403 => CodespacesDeleteFromOrganizationError403.parse(response),
  404 => CodespacesDeleteFromOrganizationError404.parse(response),
  500 => CodespacesDeleteFromOrganizationError500.parse(response),
  _ => CodespacesDeleteFromOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodespacesDeleteFromOrganizationError304 extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError304();

factory CodespacesDeleteFromOrganizationError304.parse(ApiResponse _) { return const CodespacesDeleteFromOrganizationError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesDeleteFromOrganizationError304; } 
@override int get hashCode { return (CodespacesDeleteFromOrganizationError304).hashCode; } 
@override String toString() { return 'CodespacesDeleteFromOrganizationError304()'; } 
 }
/// The `401` response.
@immutable final class CodespacesDeleteFromOrganizationError401 extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError401(this.data);

factory CodespacesDeleteFromOrganizationError401.parse(ApiResponse response) { return CodespacesDeleteFromOrganizationError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesDeleteFromOrganizationError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesDeleteFromOrganizationError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesDeleteFromOrganizationError403 extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError403(this.data);

factory CodespacesDeleteFromOrganizationError403.parse(ApiResponse response) { return CodespacesDeleteFromOrganizationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesDeleteFromOrganizationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesDeleteFromOrganizationError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesDeleteFromOrganizationError404 extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError404(this.data);

factory CodespacesDeleteFromOrganizationError404.parse(ApiResponse response) { return CodespacesDeleteFromOrganizationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesDeleteFromOrganizationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesDeleteFromOrganizationError404($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesDeleteFromOrganizationError500 extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError500(this.data);

factory CodespacesDeleteFromOrganizationError500.parse(ApiResponse response) { return CodespacesDeleteFromOrganizationError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesDeleteFromOrganizationError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesDeleteFromOrganizationError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesDeleteFromOrganizationError$Unknown extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesDeleteFromOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesDeleteFromOrganizationError.unknown($statusCode)'; } 
 }
