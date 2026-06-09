// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success responses of `PUT /orgs/{org}/dependabot/secrets/{secret_name}`.
sealed class DependabotCreateOrUpdateOrgSecretSuccess {const DependabotCreateOrUpdateOrgSecretSuccess();

/// Parse the variant matching the response status code.
factory DependabotCreateOrUpdateOrgSecretSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => DependabotCreateOrUpdateOrgSecretSuccess201.parse(response),
  204 => DependabotCreateOrUpdateOrgSecretSuccess204.parse(response),
  _ => DependabotCreateOrUpdateOrgSecretSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class DependabotCreateOrUpdateOrgSecretSuccess201 extends DependabotCreateOrUpdateOrgSecretSuccess {const DependabotCreateOrUpdateOrgSecretSuccess201(this.data);

factory DependabotCreateOrUpdateOrgSecretSuccess201.parse(ApiResponse response) { return DependabotCreateOrUpdateOrgSecretSuccess201(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotCreateOrUpdateOrgSecretSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotCreateOrUpdateOrgSecretSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class DependabotCreateOrUpdateOrgSecretSuccess204 extends DependabotCreateOrUpdateOrgSecretSuccess {const DependabotCreateOrUpdateOrgSecretSuccess204();

factory DependabotCreateOrUpdateOrgSecretSuccess204.parse(ApiResponse _) { return const DependabotCreateOrUpdateOrgSecretSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is DependabotCreateOrUpdateOrgSecretSuccess204; } 
@override int get hashCode { return (DependabotCreateOrUpdateOrgSecretSuccess204).hashCode; } 
@override String toString() { return 'DependabotCreateOrUpdateOrgSecretSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DependabotCreateOrUpdateOrgSecretSuccess$Unknown extends DependabotCreateOrUpdateOrgSecretSuccess {const DependabotCreateOrUpdateOrgSecretSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotCreateOrUpdateOrgSecretSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DependabotCreateOrUpdateOrgSecretSuccess.unknown($statusCode)'; } 
 }
