// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success responses of `PUT /orgs/{org}/codespaces/secrets/{secret_name}`.
sealed class CodespacesCreateOrUpdateOrgSecretSuccess {const CodespacesCreateOrUpdateOrgSecretSuccess();

/// Parse the variant matching the response status code.
factory CodespacesCreateOrUpdateOrgSecretSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => CodespacesCreateOrUpdateOrgSecretSuccess201.parse(response),
  204 => CodespacesCreateOrUpdateOrgSecretSuccess204.parse(response),
  _ => CodespacesCreateOrUpdateOrgSecretSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class CodespacesCreateOrUpdateOrgSecretSuccess201 extends CodespacesCreateOrUpdateOrgSecretSuccess {const CodespacesCreateOrUpdateOrgSecretSuccess201(this.data);

factory CodespacesCreateOrUpdateOrgSecretSuccess201.parse(ApiResponse response) { return CodespacesCreateOrUpdateOrgSecretSuccess201(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateOrgSecretSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateOrgSecretSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class CodespacesCreateOrUpdateOrgSecretSuccess204 extends CodespacesCreateOrUpdateOrgSecretSuccess {const CodespacesCreateOrUpdateOrgSecretSuccess204();

factory CodespacesCreateOrUpdateOrgSecretSuccess204.parse(ApiResponse _) { return const CodespacesCreateOrUpdateOrgSecretSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodespacesCreateOrUpdateOrgSecretSuccess204; } 
@override int get hashCode { return (CodespacesCreateOrUpdateOrgSecretSuccess204).hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateOrgSecretSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodespacesCreateOrUpdateOrgSecretSuccess$Unknown extends CodespacesCreateOrUpdateOrgSecretSuccess {const CodespacesCreateOrUpdateOrgSecretSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateOrgSecretSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodespacesCreateOrUpdateOrgSecretSuccess.unknown($statusCode)'; } 
 }
