// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `PUT /orgs/{org}/codespaces/secrets/{secret_name}/repositories`.
sealed class CodespacesSetSelectedReposForOrgSecretError {const CodespacesSetSelectedReposForOrgSecretError();

/// Parse the variant matching the response status code.
factory CodespacesSetSelectedReposForOrgSecretError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CodespacesSetSelectedReposForOrgSecretError404.parse(response),
  409 => CodespacesSetSelectedReposForOrgSecretError409.parse(response),
  _ => CodespacesSetSelectedReposForOrgSecretError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CodespacesSetSelectedReposForOrgSecretError404 extends CodespacesSetSelectedReposForOrgSecretError {const CodespacesSetSelectedReposForOrgSecretError404(this.data);

factory CodespacesSetSelectedReposForOrgSecretError404.parse(ApiResponse response) { return CodespacesSetSelectedReposForOrgSecretError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesSetSelectedReposForOrgSecretError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesSetSelectedReposForOrgSecretError404($data)'; } 
 }
/// The `409` response.
@immutable final class CodespacesSetSelectedReposForOrgSecretError409 extends CodespacesSetSelectedReposForOrgSecretError {const CodespacesSetSelectedReposForOrgSecretError409();

factory CodespacesSetSelectedReposForOrgSecretError409.parse(ApiResponse _) { return const CodespacesSetSelectedReposForOrgSecretError409(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesSetSelectedReposForOrgSecretError409; } 
@override int get hashCode { return (CodespacesSetSelectedReposForOrgSecretError409).hashCode; } 
@override String toString() { return 'CodespacesSetSelectedReposForOrgSecretError409()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesSetSelectedReposForOrgSecretError$Unknown extends CodespacesSetSelectedReposForOrgSecretError {const CodespacesSetSelectedReposForOrgSecretError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesSetSelectedReposForOrgSecretError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesSetSelectedReposForOrgSecretError.unknown($statusCode)'; } 
 }
