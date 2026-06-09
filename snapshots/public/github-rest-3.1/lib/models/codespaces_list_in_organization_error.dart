// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/codespaces`.
sealed class CodespacesListInOrganizationError {const CodespacesListInOrganizationError();

/// Parse the variant matching the response status code.
factory CodespacesListInOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodespacesListInOrganizationError304.parse(response),
  401 => CodespacesListInOrganizationError401.parse(response),
  403 => CodespacesListInOrganizationError403.parse(response),
  404 => CodespacesListInOrganizationError404.parse(response),
  500 => CodespacesListInOrganizationError500.parse(response),
  _ => CodespacesListInOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodespacesListInOrganizationError304 extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError304();

factory CodespacesListInOrganizationError304.parse(ApiResponse _) { return const CodespacesListInOrganizationError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesListInOrganizationError304; } 
@override int get hashCode { return (CodespacesListInOrganizationError304).hashCode; } 
@override String toString() { return 'CodespacesListInOrganizationError304()'; } 
 }
/// The `401` response.
@immutable final class CodespacesListInOrganizationError401 extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError401(this.data);

factory CodespacesListInOrganizationError401.parse(ApiResponse response) { return CodespacesListInOrganizationError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesListInOrganizationError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesListInOrganizationError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesListInOrganizationError403 extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError403(this.data);

factory CodespacesListInOrganizationError403.parse(ApiResponse response) { return CodespacesListInOrganizationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesListInOrganizationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesListInOrganizationError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesListInOrganizationError404 extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError404(this.data);

factory CodespacesListInOrganizationError404.parse(ApiResponse response) { return CodespacesListInOrganizationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesListInOrganizationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesListInOrganizationError404($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesListInOrganizationError500 extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError500(this.data);

factory CodespacesListInOrganizationError500.parse(ApiResponse response) { return CodespacesListInOrganizationError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesListInOrganizationError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesListInOrganizationError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesListInOrganizationError$Unknown extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesListInOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesListInOrganizationError.unknown($statusCode)'; } 
 }
