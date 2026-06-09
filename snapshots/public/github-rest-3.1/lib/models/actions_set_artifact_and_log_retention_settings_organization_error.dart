// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /orgs/{org}/actions/permissions/artifact-and-log-retention`.
sealed class ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError();

/// Parse the variant matching the response status code.
factory ActionsSetArtifactAndLogRetentionSettingsOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ActionsSetArtifactAndLogRetentionSettingsOrganizationError403.parse(response),
  404 => ActionsSetArtifactAndLogRetentionSettingsOrganizationError404.parse(response),
  409 => ActionsSetArtifactAndLogRetentionSettingsOrganizationError409.parse(response),
  422 => ActionsSetArtifactAndLogRetentionSettingsOrganizationError422.parse(response),
  _ => ActionsSetArtifactAndLogRetentionSettingsOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ActionsSetArtifactAndLogRetentionSettingsOrganizationError403 extends ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError403(this.data);

factory ActionsSetArtifactAndLogRetentionSettingsOrganizationError403.parse(ApiResponse response) { return ActionsSetArtifactAndLogRetentionSettingsOrganizationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetArtifactAndLogRetentionSettingsOrganizationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetArtifactAndLogRetentionSettingsOrganizationError403($data)'; } 
 }
/// The `404` response.
@immutable final class ActionsSetArtifactAndLogRetentionSettingsOrganizationError404 extends ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError404(this.data);

factory ActionsSetArtifactAndLogRetentionSettingsOrganizationError404.parse(ApiResponse response) { return ActionsSetArtifactAndLogRetentionSettingsOrganizationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetArtifactAndLogRetentionSettingsOrganizationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetArtifactAndLogRetentionSettingsOrganizationError404($data)'; } 
 }
/// The `409` response.
@immutable final class ActionsSetArtifactAndLogRetentionSettingsOrganizationError409 extends ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError409(this.data);

factory ActionsSetArtifactAndLogRetentionSettingsOrganizationError409.parse(ApiResponse response) { return ActionsSetArtifactAndLogRetentionSettingsOrganizationError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetArtifactAndLogRetentionSettingsOrganizationError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetArtifactAndLogRetentionSettingsOrganizationError409($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsSetArtifactAndLogRetentionSettingsOrganizationError422 extends ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError422(this.data);

factory ActionsSetArtifactAndLogRetentionSettingsOrganizationError422.parse(ApiResponse response) { return ActionsSetArtifactAndLogRetentionSettingsOrganizationError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetArtifactAndLogRetentionSettingsOrganizationError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetArtifactAndLogRetentionSettingsOrganizationError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsSetArtifactAndLogRetentionSettingsOrganizationError$Unknown extends ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetArtifactAndLogRetentionSettingsOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsSetArtifactAndLogRetentionSettingsOrganizationError.unknown($statusCode)'; } 
 }
