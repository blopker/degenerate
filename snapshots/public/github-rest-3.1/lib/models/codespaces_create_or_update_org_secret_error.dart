// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /orgs/{org}/codespaces/secrets/{secret_name}`.
sealed class CodespacesCreateOrUpdateOrgSecretError {const CodespacesCreateOrUpdateOrgSecretError();

/// Parse the variant matching the response status code.
factory CodespacesCreateOrUpdateOrgSecretError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CodespacesCreateOrUpdateOrgSecretError404.parse(response),
  422 => CodespacesCreateOrUpdateOrgSecretError422.parse(response),
  _ => CodespacesCreateOrUpdateOrgSecretError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CodespacesCreateOrUpdateOrgSecretError404 extends CodespacesCreateOrUpdateOrgSecretError {const CodespacesCreateOrUpdateOrgSecretError404(this.data);

factory CodespacesCreateOrUpdateOrgSecretError404.parse(ApiResponse response) { return CodespacesCreateOrUpdateOrgSecretError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateOrgSecretError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateOrgSecretError404($data)'; } 
 }
/// The `422` response.
@immutable final class CodespacesCreateOrUpdateOrgSecretError422 extends CodespacesCreateOrUpdateOrgSecretError {const CodespacesCreateOrUpdateOrgSecretError422(this.data);

factory CodespacesCreateOrUpdateOrgSecretError422.parse(ApiResponse response) { return CodespacesCreateOrUpdateOrgSecretError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateOrgSecretError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateOrgSecretError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesCreateOrUpdateOrgSecretError$Unknown extends CodespacesCreateOrUpdateOrgSecretError {const CodespacesCreateOrUpdateOrgSecretError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateOrgSecretError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesCreateOrUpdateOrgSecretError.unknown($statusCode)'; } 
 }
