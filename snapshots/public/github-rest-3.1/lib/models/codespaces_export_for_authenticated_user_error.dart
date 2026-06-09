// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /user/codespaces/{codespace_name}/exports`.
sealed class CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesExportForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CodespacesExportForAuthenticatedUserError401.parse(response),
  403 => CodespacesExportForAuthenticatedUserError403.parse(response),
  404 => CodespacesExportForAuthenticatedUserError404.parse(response),
  422 => CodespacesExportForAuthenticatedUserError422.parse(response),
  500 => CodespacesExportForAuthenticatedUserError500.parse(response),
  _ => CodespacesExportForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CodespacesExportForAuthenticatedUserError401 extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError401(this.data);

factory CodespacesExportForAuthenticatedUserError401.parse(ApiResponse response) { return CodespacesExportForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesExportForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesExportForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesExportForAuthenticatedUserError403 extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError403(this.data);

factory CodespacesExportForAuthenticatedUserError403.parse(ApiResponse response) { return CodespacesExportForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesExportForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesExportForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesExportForAuthenticatedUserError404 extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError404(this.data);

factory CodespacesExportForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesExportForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesExportForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesExportForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class CodespacesExportForAuthenticatedUserError422 extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError422(this.data);

factory CodespacesExportForAuthenticatedUserError422.parse(ApiResponse response) { return CodespacesExportForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesExportForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesExportForAuthenticatedUserError422($data)'; } 
 }
/// The `500` response.
@immutable final class CodespacesExportForAuthenticatedUserError500 extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError500(this.data);

factory CodespacesExportForAuthenticatedUserError500.parse(ApiResponse response) { return CodespacesExportForAuthenticatedUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesExportForAuthenticatedUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesExportForAuthenticatedUserError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesExportForAuthenticatedUserError$Unknown extends CodespacesExportForAuthenticatedUserError {const CodespacesExportForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesExportForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesExportForAuthenticatedUserError.unknown($statusCode)'; } 
 }
