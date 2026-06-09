// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'codespaces_check_permissions_for_devcontainer_response503.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/codespaces/permissions_check`.
sealed class CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError();

/// Parse the variant matching the response status code.
factory CodespacesCheckPermissionsForDevcontainerError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CodespacesCheckPermissionsForDevcontainerError401.parse(response),
  403 => CodespacesCheckPermissionsForDevcontainerError403.parse(response),
  404 => CodespacesCheckPermissionsForDevcontainerError404.parse(response),
  422 => CodespacesCheckPermissionsForDevcontainerError422.parse(response),
  503 => CodespacesCheckPermissionsForDevcontainerError503.parse(response),
  _ => CodespacesCheckPermissionsForDevcontainerError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CodespacesCheckPermissionsForDevcontainerError401 extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError401(this.data);

factory CodespacesCheckPermissionsForDevcontainerError401.parse(ApiResponse response) { return CodespacesCheckPermissionsForDevcontainerError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCheckPermissionsForDevcontainerError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCheckPermissionsForDevcontainerError401($data)'; } 
 }
/// The `403` response.
@immutable final class CodespacesCheckPermissionsForDevcontainerError403 extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError403(this.data);

factory CodespacesCheckPermissionsForDevcontainerError403.parse(ApiResponse response) { return CodespacesCheckPermissionsForDevcontainerError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCheckPermissionsForDevcontainerError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCheckPermissionsForDevcontainerError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodespacesCheckPermissionsForDevcontainerError404 extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError404(this.data);

factory CodespacesCheckPermissionsForDevcontainerError404.parse(ApiResponse response) { return CodespacesCheckPermissionsForDevcontainerError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCheckPermissionsForDevcontainerError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCheckPermissionsForDevcontainerError404($data)'; } 
 }
/// The `422` response.
@immutable final class CodespacesCheckPermissionsForDevcontainerError422 extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError422(this.data);

factory CodespacesCheckPermissionsForDevcontainerError422.parse(ApiResponse response) { return CodespacesCheckPermissionsForDevcontainerError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCheckPermissionsForDevcontainerError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCheckPermissionsForDevcontainerError422($data)'; } 
 }
/// The `503` response.
@immutable final class CodespacesCheckPermissionsForDevcontainerError503 extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError503(this.data);

factory CodespacesCheckPermissionsForDevcontainerError503.parse(ApiResponse response) { return CodespacesCheckPermissionsForDevcontainerError503(CodespacesCheckPermissionsForDevcontainerResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodespacesCheckPermissionsForDevcontainerResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCheckPermissionsForDevcontainerError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCheckPermissionsForDevcontainerError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesCheckPermissionsForDevcontainerError$Unknown extends CodespacesCheckPermissionsForDevcontainerError {const CodespacesCheckPermissionsForDevcontainerError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCheckPermissionsForDevcontainerError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesCheckPermissionsForDevcontainerError.unknown($statusCode)'; } 
 }
