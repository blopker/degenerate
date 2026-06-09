// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /orgs/{org}/members/{username}/codespaces`.
sealed class CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError();

/// Parse the variant matching the response status code.
factory CodespacesGetCodespacesForUserInOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodespacesGetCodespacesForUserInOrgError304.parse(response),
  401 => CodespacesGetCodespacesForUserInOrgError401.parse(response),
  403 => CodespacesGetCodespacesForUserInOrgError403.parse(response),
  404 => CodespacesGetCodespacesForUserInOrgError404.parse(response),
  500 => CodespacesGetCodespacesForUserInOrgError500.parse(response),
  _ => CodespacesGetCodespacesForUserInOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodespacesGetCodespacesForUserInOrgError304 extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError304();

factory CodespacesGetCodespacesForUserInOrgError304.parse(ApiResponse _) { return const CodespacesGetCodespacesForUserInOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesGetCodespacesForUserInOrgError304; } 
@override int get hashCode { return (CodespacesGetCodespacesForUserInOrgError304).hashCode; } 
@override String toString() { return 'CodespacesGetCodespacesForUserInOrgError304()'; } 
 }
/// The `401` response.
@immutable final class CodespacesGetCodespacesForUserInOrgError401 extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError401(this.data);

factory CodespacesGetCodespacesForUserInOrgError401.parse(ApiResponse response) { return CodespacesGetCodespacesForUserInOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesGetCodespacesForUserInOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesGetCodespacesForUserInOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesGetCodespacesForUserInOrgError403 extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError403(this.data);

factory CodespacesGetCodespacesForUserInOrgError403.parse(ApiResponse response) { return CodespacesGetCodespacesForUserInOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesGetCodespacesForUserInOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesGetCodespacesForUserInOrgError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesGetCodespacesForUserInOrgError404 extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError404(this.data);

factory CodespacesGetCodespacesForUserInOrgError404.parse(ApiResponse response) { return CodespacesGetCodespacesForUserInOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesGetCodespacesForUserInOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesGetCodespacesForUserInOrgError404($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesGetCodespacesForUserInOrgError500 extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError500(this.data);

factory CodespacesGetCodespacesForUserInOrgError500.parse(ApiResponse response) { return CodespacesGetCodespacesForUserInOrgError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesGetCodespacesForUserInOrgError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesGetCodespacesForUserInOrgError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesGetCodespacesForUserInOrgError$Unknown extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesGetCodespacesForUserInOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesGetCodespacesForUserInOrgError.unknown($statusCode)'; } 
 }
