// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /user/codespaces/secrets/{secret_name}`.
sealed class CodespacesCreateOrUpdateSecretForAuthenticatedUserError {const CodespacesCreateOrUpdateSecretForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory CodespacesCreateOrUpdateSecretForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CodespacesCreateOrUpdateSecretForAuthenticatedUserError404.parse(response),
  422 => CodespacesCreateOrUpdateSecretForAuthenticatedUserError422.parse(response),
  _ => CodespacesCreateOrUpdateSecretForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CodespacesCreateOrUpdateSecretForAuthenticatedUserError404 extends CodespacesCreateOrUpdateSecretForAuthenticatedUserError {const CodespacesCreateOrUpdateSecretForAuthenticatedUserError404(this.data);

factory CodespacesCreateOrUpdateSecretForAuthenticatedUserError404.parse(ApiResponse response) { return CodespacesCreateOrUpdateSecretForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateSecretForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateSecretForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class CodespacesCreateOrUpdateSecretForAuthenticatedUserError422 extends CodespacesCreateOrUpdateSecretForAuthenticatedUserError {const CodespacesCreateOrUpdateSecretForAuthenticatedUserError422(this.data);

factory CodespacesCreateOrUpdateSecretForAuthenticatedUserError422.parse(ApiResponse response) { return CodespacesCreateOrUpdateSecretForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateSecretForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateSecretForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesCreateOrUpdateSecretForAuthenticatedUserError$Unknown extends CodespacesCreateOrUpdateSecretForAuthenticatedUserError {const CodespacesCreateOrUpdateSecretForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateSecretForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesCreateOrUpdateSecretForAuthenticatedUserError.unknown($statusCode)'; } 
 }
