// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success responses of `PUT /repos/{owner}/{repo}/dependabot/secrets/{secret_name}`.
sealed class DependabotCreateOrUpdateRepoSecretSuccess {const DependabotCreateOrUpdateRepoSecretSuccess();

/// Parse the variant matching the response status code.
factory DependabotCreateOrUpdateRepoSecretSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => DependabotCreateOrUpdateRepoSecretSuccess201.parse(response),
  204 => DependabotCreateOrUpdateRepoSecretSuccess204.parse(response),
  _ => DependabotCreateOrUpdateRepoSecretSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class DependabotCreateOrUpdateRepoSecretSuccess201 extends DependabotCreateOrUpdateRepoSecretSuccess {const DependabotCreateOrUpdateRepoSecretSuccess201(this.data);

factory DependabotCreateOrUpdateRepoSecretSuccess201.parse(ApiResponse response) { return DependabotCreateOrUpdateRepoSecretSuccess201(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotCreateOrUpdateRepoSecretSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotCreateOrUpdateRepoSecretSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class DependabotCreateOrUpdateRepoSecretSuccess204 extends DependabotCreateOrUpdateRepoSecretSuccess {const DependabotCreateOrUpdateRepoSecretSuccess204();

factory DependabotCreateOrUpdateRepoSecretSuccess204.parse(ApiResponse _) { return const DependabotCreateOrUpdateRepoSecretSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is DependabotCreateOrUpdateRepoSecretSuccess204; } 
@override int get hashCode { return (DependabotCreateOrUpdateRepoSecretSuccess204).hashCode; } 
@override String toString() { return 'DependabotCreateOrUpdateRepoSecretSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DependabotCreateOrUpdateRepoSecretSuccess$Unknown extends DependabotCreateOrUpdateRepoSecretSuccess {const DependabotCreateOrUpdateRepoSecretSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotCreateOrUpdateRepoSecretSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DependabotCreateOrUpdateRepoSecretSuccess.unknown($statusCode)'; } 
 }
