// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/actions/permissions/artifact-and-log-retention`.
sealed class ActionsSetArtifactAndLogRetentionSettingsRepositoryError {const ActionsSetArtifactAndLogRetentionSettingsRepositoryError();

/// Parse the variant matching the response status code.
factory ActionsSetArtifactAndLogRetentionSettingsRepositoryError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsSetArtifactAndLogRetentionSettingsRepositoryError404.parse(response),
  422 => ActionsSetArtifactAndLogRetentionSettingsRepositoryError422.parse(response),
  _ => ActionsSetArtifactAndLogRetentionSettingsRepositoryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsSetArtifactAndLogRetentionSettingsRepositoryError404 extends ActionsSetArtifactAndLogRetentionSettingsRepositoryError {const ActionsSetArtifactAndLogRetentionSettingsRepositoryError404(this.data);

factory ActionsSetArtifactAndLogRetentionSettingsRepositoryError404.parse(ApiResponse response) { return ActionsSetArtifactAndLogRetentionSettingsRepositoryError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetArtifactAndLogRetentionSettingsRepositoryError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetArtifactAndLogRetentionSettingsRepositoryError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsSetArtifactAndLogRetentionSettingsRepositoryError422 extends ActionsSetArtifactAndLogRetentionSettingsRepositoryError {const ActionsSetArtifactAndLogRetentionSettingsRepositoryError422(this.data);

factory ActionsSetArtifactAndLogRetentionSettingsRepositoryError422.parse(ApiResponse response) { return ActionsSetArtifactAndLogRetentionSettingsRepositoryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetArtifactAndLogRetentionSettingsRepositoryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetArtifactAndLogRetentionSettingsRepositoryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsSetArtifactAndLogRetentionSettingsRepositoryError$Unknown extends ActionsSetArtifactAndLogRetentionSettingsRepositoryError {const ActionsSetArtifactAndLogRetentionSettingsRepositoryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetArtifactAndLogRetentionSettingsRepositoryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsSetArtifactAndLogRetentionSettingsRepositoryError.unknown($statusCode)'; } 
 }
