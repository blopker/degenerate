// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success responses of `PUT /repos/{owner}/{repo}/environments/{environment_name}/secrets/{secret_name}`.
sealed class ActionsCreateOrUpdateEnvironmentSecretSuccess {const ActionsCreateOrUpdateEnvironmentSecretSuccess();

/// Parse the variant matching the response status code.
factory ActionsCreateOrUpdateEnvironmentSecretSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => ActionsCreateOrUpdateEnvironmentSecretSuccess201.parse(response),
  204 => ActionsCreateOrUpdateEnvironmentSecretSuccess204.parse(response),
  _ => ActionsCreateOrUpdateEnvironmentSecretSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class ActionsCreateOrUpdateEnvironmentSecretSuccess201 extends ActionsCreateOrUpdateEnvironmentSecretSuccess {const ActionsCreateOrUpdateEnvironmentSecretSuccess201(this.data);

factory ActionsCreateOrUpdateEnvironmentSecretSuccess201.parse(ApiResponse response) { return ActionsCreateOrUpdateEnvironmentSecretSuccess201(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsCreateOrUpdateEnvironmentSecretSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsCreateOrUpdateEnvironmentSecretSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class ActionsCreateOrUpdateEnvironmentSecretSuccess204 extends ActionsCreateOrUpdateEnvironmentSecretSuccess {const ActionsCreateOrUpdateEnvironmentSecretSuccess204();

factory ActionsCreateOrUpdateEnvironmentSecretSuccess204.parse(ApiResponse _) { return const ActionsCreateOrUpdateEnvironmentSecretSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActionsCreateOrUpdateEnvironmentSecretSuccess204; } 
@override int get hashCode { return (ActionsCreateOrUpdateEnvironmentSecretSuccess204).hashCode; } 
@override String toString() { return 'ActionsCreateOrUpdateEnvironmentSecretSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsCreateOrUpdateEnvironmentSecretSuccess$Unknown extends ActionsCreateOrUpdateEnvironmentSecretSuccess {const ActionsCreateOrUpdateEnvironmentSecretSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsCreateOrUpdateEnvironmentSecretSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsCreateOrUpdateEnvironmentSecretSuccess.unknown($statusCode)'; } 
 }
