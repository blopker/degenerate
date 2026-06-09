// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success responses of `PUT /repos/{owner}/{repo}/actions/secrets/{secret_name}`.
sealed class ActionsCreateOrUpdateRepoSecretSuccess {const ActionsCreateOrUpdateRepoSecretSuccess();

/// Parse the variant matching the response status code.
factory ActionsCreateOrUpdateRepoSecretSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => ActionsCreateOrUpdateRepoSecretSuccess201.parse(response),
  204 => ActionsCreateOrUpdateRepoSecretSuccess204.parse(response),
  _ => ActionsCreateOrUpdateRepoSecretSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class ActionsCreateOrUpdateRepoSecretSuccess201 extends ActionsCreateOrUpdateRepoSecretSuccess {const ActionsCreateOrUpdateRepoSecretSuccess201(this.data);

factory ActionsCreateOrUpdateRepoSecretSuccess201.parse(ApiResponse response) { return ActionsCreateOrUpdateRepoSecretSuccess201(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsCreateOrUpdateRepoSecretSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsCreateOrUpdateRepoSecretSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class ActionsCreateOrUpdateRepoSecretSuccess204 extends ActionsCreateOrUpdateRepoSecretSuccess {const ActionsCreateOrUpdateRepoSecretSuccess204();

factory ActionsCreateOrUpdateRepoSecretSuccess204.parse(ApiResponse _) { return const ActionsCreateOrUpdateRepoSecretSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActionsCreateOrUpdateRepoSecretSuccess204; } 
@override int get hashCode { return (ActionsCreateOrUpdateRepoSecretSuccess204).hashCode; } 
@override String toString() { return 'ActionsCreateOrUpdateRepoSecretSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsCreateOrUpdateRepoSecretSuccess$Unknown extends ActionsCreateOrUpdateRepoSecretSuccess {const ActionsCreateOrUpdateRepoSecretSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsCreateOrUpdateRepoSecretSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsCreateOrUpdateRepoSecretSuccess.unknown($statusCode)'; } 
 }
