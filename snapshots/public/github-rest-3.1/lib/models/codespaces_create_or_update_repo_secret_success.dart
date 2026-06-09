// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success responses of `PUT /repos/{owner}/{repo}/codespaces/secrets/{secret_name}`.
sealed class CodespacesCreateOrUpdateRepoSecretSuccess {const CodespacesCreateOrUpdateRepoSecretSuccess();

/// Parse the variant matching the response status code.
factory CodespacesCreateOrUpdateRepoSecretSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => CodespacesCreateOrUpdateRepoSecretSuccess201.parse(response),
  204 => CodespacesCreateOrUpdateRepoSecretSuccess204.parse(response),
  _ => CodespacesCreateOrUpdateRepoSecretSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class CodespacesCreateOrUpdateRepoSecretSuccess201 extends CodespacesCreateOrUpdateRepoSecretSuccess {const CodespacesCreateOrUpdateRepoSecretSuccess201(this.data);

factory CodespacesCreateOrUpdateRepoSecretSuccess201.parse(ApiResponse response) { return CodespacesCreateOrUpdateRepoSecretSuccess201(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateRepoSecretSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateRepoSecretSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class CodespacesCreateOrUpdateRepoSecretSuccess204 extends CodespacesCreateOrUpdateRepoSecretSuccess {const CodespacesCreateOrUpdateRepoSecretSuccess204();

factory CodespacesCreateOrUpdateRepoSecretSuccess204.parse(ApiResponse _) { return const CodespacesCreateOrUpdateRepoSecretSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesCreateOrUpdateRepoSecretSuccess204; } 
@override int get hashCode { return (CodespacesCreateOrUpdateRepoSecretSuccess204).hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateRepoSecretSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesCreateOrUpdateRepoSecretSuccess$Unknown extends CodespacesCreateOrUpdateRepoSecretSuccess {const CodespacesCreateOrUpdateRepoSecretSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateRepoSecretSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesCreateOrUpdateRepoSecretSuccess.unknown($statusCode)'; } 
 }
