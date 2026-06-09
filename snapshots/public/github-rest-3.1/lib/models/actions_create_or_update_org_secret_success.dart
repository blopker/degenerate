// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success responses of `PUT /orgs/{org}/actions/secrets/{secret_name}`.
sealed class ActionsCreateOrUpdateOrgSecretSuccess {const ActionsCreateOrUpdateOrgSecretSuccess();

/// Parse the variant matching the response status code.
factory ActionsCreateOrUpdateOrgSecretSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => ActionsCreateOrUpdateOrgSecretSuccess201.parse(response),
  204 => ActionsCreateOrUpdateOrgSecretSuccess204.parse(response),
  _ => ActionsCreateOrUpdateOrgSecretSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class ActionsCreateOrUpdateOrgSecretSuccess201 extends ActionsCreateOrUpdateOrgSecretSuccess {const ActionsCreateOrUpdateOrgSecretSuccess201(this.data);

factory ActionsCreateOrUpdateOrgSecretSuccess201.parse(ApiResponse response) { return ActionsCreateOrUpdateOrgSecretSuccess201(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsCreateOrUpdateOrgSecretSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsCreateOrUpdateOrgSecretSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class ActionsCreateOrUpdateOrgSecretSuccess204 extends ActionsCreateOrUpdateOrgSecretSuccess {const ActionsCreateOrUpdateOrgSecretSuccess204();

factory ActionsCreateOrUpdateOrgSecretSuccess204.parse(ApiResponse _) { return const ActionsCreateOrUpdateOrgSecretSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActionsCreateOrUpdateOrgSecretSuccess204; } 
@override int get hashCode { return (ActionsCreateOrUpdateOrgSecretSuccess204).hashCode; } 
@override String toString() { return 'ActionsCreateOrUpdateOrgSecretSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsCreateOrUpdateOrgSecretSuccess$Unknown extends ActionsCreateOrUpdateOrgSecretSuccess {const ActionsCreateOrUpdateOrgSecretSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsCreateOrUpdateOrgSecretSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsCreateOrUpdateOrgSecretSuccess.unknown($statusCode)'; } 
 }
