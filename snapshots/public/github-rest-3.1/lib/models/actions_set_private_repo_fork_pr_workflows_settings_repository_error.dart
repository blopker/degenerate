// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/actions/permissions/fork-pr-workflows-private-repos`.
sealed class ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError();

/// Parse the variant matching the response status code.
factory ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError404.parse(response),
  422 => ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError422.parse(response),
  _ => ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError404 extends ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError404(this.data);

factory ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError404.parse(ApiResponse response) { return ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError422 extends ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError422(this.data);

factory ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError422.parse(ApiResponse response) { return ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError$Unknown extends ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError.unknown($statusCode)'; } 
 }
