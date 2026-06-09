// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /orgs/{org}/codespaces/secrets/{secret_name}/repositories/{repository_id}`.
sealed class CodespacesAddSelectedRepoToOrgSecretError {const CodespacesAddSelectedRepoToOrgSecretError();

/// Parse the variant matching the response status code.
factory CodespacesAddSelectedRepoToOrgSecretError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CodespacesAddSelectedRepoToOrgSecretError404.parse(response),
  409 => CodespacesAddSelectedRepoToOrgSecretError409.parse(response),
  422 => CodespacesAddSelectedRepoToOrgSecretError422.parse(response),
  _ => CodespacesAddSelectedRepoToOrgSecretError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CodespacesAddSelectedRepoToOrgSecretError404 extends CodespacesAddSelectedRepoToOrgSecretError {const CodespacesAddSelectedRepoToOrgSecretError404(this.data);

factory CodespacesAddSelectedRepoToOrgSecretError404.parse(ApiResponse response) { return CodespacesAddSelectedRepoToOrgSecretError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesAddSelectedRepoToOrgSecretError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesAddSelectedRepoToOrgSecretError404($data)'; } 
 }
/// The `409` response.
@immutable final class CodespacesAddSelectedRepoToOrgSecretError409 extends CodespacesAddSelectedRepoToOrgSecretError {const CodespacesAddSelectedRepoToOrgSecretError409();

factory CodespacesAddSelectedRepoToOrgSecretError409.parse(ApiResponse _) { return const CodespacesAddSelectedRepoToOrgSecretError409(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesAddSelectedRepoToOrgSecretError409; } 
@override int get hashCode { return (CodespacesAddSelectedRepoToOrgSecretError409).hashCode; } 
@override String toString() { return 'CodespacesAddSelectedRepoToOrgSecretError409()'; } 
 }
/// The `422` response.
@immutable final class CodespacesAddSelectedRepoToOrgSecretError422 extends CodespacesAddSelectedRepoToOrgSecretError {const CodespacesAddSelectedRepoToOrgSecretError422(this.data);

factory CodespacesAddSelectedRepoToOrgSecretError422.parse(ApiResponse response) { return CodespacesAddSelectedRepoToOrgSecretError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesAddSelectedRepoToOrgSecretError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesAddSelectedRepoToOrgSecretError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesAddSelectedRepoToOrgSecretError$Unknown extends CodespacesAddSelectedRepoToOrgSecretError {const CodespacesAddSelectedRepoToOrgSecretError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesAddSelectedRepoToOrgSecretError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesAddSelectedRepoToOrgSecretError.unknown($statusCode)'; } 
 }
