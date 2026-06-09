// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /orgs/{org}/actions/permissions/fork-pr-workflows-private-repos`.
sealed class ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError();

/// Parse the variant matching the response status code.
factory ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError403.parse(response),
  404 => ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError404.parse(response),
  422 => ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError422.parse(response),
  _ => ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError403 extends ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError403(this.data);

factory ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError403.parse(ApiResponse response) { return ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError403($data)'; } 
 }
/// The `404` response.
@immutable final class ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError404 extends ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError404(this.data);

factory ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError404.parse(ApiResponse response) { return ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError422 extends ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError422(this.data);

factory ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError422.parse(ApiResponse response) { return ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError$Unknown extends ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError.unknown($statusCode)'; } 
 }
