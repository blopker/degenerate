// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/actions/runners/{runner_id}/labels/{name}`.
sealed class ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError();

/// Parse the variant matching the response status code.
factory ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError404.parse(response),
  422 => ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError422.parse(response),
  _ => ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError404 extends ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError404(this.data);

factory ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError404.parse(ApiResponse response) { return ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError422 extends ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError422(this.data);

factory ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError422.parse(ApiResponse response) { return ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError$Unknown extends ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError.unknown($statusCode)'; } 
 }
