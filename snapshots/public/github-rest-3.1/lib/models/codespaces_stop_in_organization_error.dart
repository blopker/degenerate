// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `POST /orgs/{org}/members/{username}/codespaces/{codespace_name}/stop`.
sealed class CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError();

/// Parse the variant matching the response status code.
factory CodespacesStopInOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodespacesStopInOrganizationError304.parse(response),
  401 => CodespacesStopInOrganizationError401.parse(response),
  403 => CodespacesStopInOrganizationError403.parse(response),
  404 => CodespacesStopInOrganizationError404.parse(response),
  500 => CodespacesStopInOrganizationError500.parse(response),
  _ => CodespacesStopInOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodespacesStopInOrganizationError304 extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError304();

factory CodespacesStopInOrganizationError304.parse(ApiResponse _) { return const CodespacesStopInOrganizationError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesStopInOrganizationError304; } 
@override int get hashCode { return (CodespacesStopInOrganizationError304).hashCode; } 
@override String toString() { return 'CodespacesStopInOrganizationError304()'; } 
 }
/// The `401` response.
@immutable final class CodespacesStopInOrganizationError401 extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError401(this.data);

factory CodespacesStopInOrganizationError401.parse(ApiResponse response) { return CodespacesStopInOrganizationError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStopInOrganizationError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStopInOrganizationError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesStopInOrganizationError403 extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError403(this.data);

factory CodespacesStopInOrganizationError403.parse(ApiResponse response) { return CodespacesStopInOrganizationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStopInOrganizationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStopInOrganizationError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesStopInOrganizationError404 extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError404(this.data);

factory CodespacesStopInOrganizationError404.parse(ApiResponse response) { return CodespacesStopInOrganizationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStopInOrganizationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStopInOrganizationError404($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesStopInOrganizationError500 extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError500(this.data);

factory CodespacesStopInOrganizationError500.parse(ApiResponse response) { return CodespacesStopInOrganizationError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStopInOrganizationError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesStopInOrganizationError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesStopInOrganizationError$Unknown extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesStopInOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesStopInOrganizationError.unknown($statusCode)'; } 
 }
