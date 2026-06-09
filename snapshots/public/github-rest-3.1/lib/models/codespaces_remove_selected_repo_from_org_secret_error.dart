// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `DELETE /orgs/{org}/codespaces/secrets/{secret_name}/repositories/{repository_id}`.
sealed class CodespacesRemoveSelectedRepoFromOrgSecretError {const CodespacesRemoveSelectedRepoFromOrgSecretError();

/// Parse the variant matching the response status code.
factory CodespacesRemoveSelectedRepoFromOrgSecretError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CodespacesRemoveSelectedRepoFromOrgSecretError404.parse(response),
  409 => CodespacesRemoveSelectedRepoFromOrgSecretError409.parse(response),
  422 => CodespacesRemoveSelectedRepoFromOrgSecretError422.parse(response),
  _ => CodespacesRemoveSelectedRepoFromOrgSecretError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CodespacesRemoveSelectedRepoFromOrgSecretError404 extends CodespacesRemoveSelectedRepoFromOrgSecretError {const CodespacesRemoveSelectedRepoFromOrgSecretError404(this.data);

factory CodespacesRemoveSelectedRepoFromOrgSecretError404.parse(ApiResponse response) { return CodespacesRemoveSelectedRepoFromOrgSecretError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesRemoveSelectedRepoFromOrgSecretError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesRemoveSelectedRepoFromOrgSecretError404($data)'; } 
 }
/// The `409` response.
@immutable final class CodespacesRemoveSelectedRepoFromOrgSecretError409 extends CodespacesRemoveSelectedRepoFromOrgSecretError {const CodespacesRemoveSelectedRepoFromOrgSecretError409();

factory CodespacesRemoveSelectedRepoFromOrgSecretError409.parse(ApiResponse _) { return const CodespacesRemoveSelectedRepoFromOrgSecretError409(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesRemoveSelectedRepoFromOrgSecretError409; } 
@override int get hashCode { return (CodespacesRemoveSelectedRepoFromOrgSecretError409).hashCode; } 
@override String toString() { return 'CodespacesRemoveSelectedRepoFromOrgSecretError409()'; } 
 }
/// The `422` response.
@immutable final class CodespacesRemoveSelectedRepoFromOrgSecretError422 extends CodespacesRemoveSelectedRepoFromOrgSecretError {const CodespacesRemoveSelectedRepoFromOrgSecretError422(this.data);

factory CodespacesRemoveSelectedRepoFromOrgSecretError422.parse(ApiResponse response) { return CodespacesRemoveSelectedRepoFromOrgSecretError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesRemoveSelectedRepoFromOrgSecretError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesRemoveSelectedRepoFromOrgSecretError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesRemoveSelectedRepoFromOrgSecretError$Unknown extends CodespacesRemoveSelectedRepoFromOrgSecretError {const CodespacesRemoveSelectedRepoFromOrgSecretError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesRemoveSelectedRepoFromOrgSecretError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesRemoveSelectedRepoFromOrgSecretError.unknown($statusCode)'; } 
 }
