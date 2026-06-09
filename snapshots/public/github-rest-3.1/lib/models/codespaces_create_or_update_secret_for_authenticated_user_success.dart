// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success responses of `PUT /user/codespaces/secrets/{secret_name}`.
sealed class CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess {const CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess();

/// Parse the variant matching the response status code.
factory CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess201.parse(response),
  204 => CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204.parse(response),
  _ => CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess201 extends CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess {const CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess201(this.data);

factory CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess201.parse(ApiResponse response) { return CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess201(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204 extends CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess {const CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204();

factory CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204.parse(ApiResponse _) { return const CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204; } 
@override int get hashCode { return (CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204).hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess$Unknown extends CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess {const CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess.unknown($statusCode)'; } 
 }
