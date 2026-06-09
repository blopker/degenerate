// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `POST /repos/{owner}/{repo}/actions/runners/{runner_id}/labels`.
sealed class ActionsAddCustomLabelsToSelfHostedRunnerForRepoError {const ActionsAddCustomLabelsToSelfHostedRunnerForRepoError();

/// Parse the variant matching the response status code.
factory ActionsAddCustomLabelsToSelfHostedRunnerForRepoError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsAddCustomLabelsToSelfHostedRunnerForRepoError404.parse(response),
  422 => ActionsAddCustomLabelsToSelfHostedRunnerForRepoError422.parse(response),
  _ => ActionsAddCustomLabelsToSelfHostedRunnerForRepoError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsAddCustomLabelsToSelfHostedRunnerForRepoError404 extends ActionsAddCustomLabelsToSelfHostedRunnerForRepoError {const ActionsAddCustomLabelsToSelfHostedRunnerForRepoError404(this.data);

factory ActionsAddCustomLabelsToSelfHostedRunnerForRepoError404.parse(ApiResponse response) { return ActionsAddCustomLabelsToSelfHostedRunnerForRepoError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsAddCustomLabelsToSelfHostedRunnerForRepoError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsAddCustomLabelsToSelfHostedRunnerForRepoError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsAddCustomLabelsToSelfHostedRunnerForRepoError422 extends ActionsAddCustomLabelsToSelfHostedRunnerForRepoError {const ActionsAddCustomLabelsToSelfHostedRunnerForRepoError422(this.data);

factory ActionsAddCustomLabelsToSelfHostedRunnerForRepoError422.parse(ApiResponse response) { return ActionsAddCustomLabelsToSelfHostedRunnerForRepoError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsAddCustomLabelsToSelfHostedRunnerForRepoError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsAddCustomLabelsToSelfHostedRunnerForRepoError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsAddCustomLabelsToSelfHostedRunnerForRepoError$Unknown extends ActionsAddCustomLabelsToSelfHostedRunnerForRepoError {const ActionsAddCustomLabelsToSelfHostedRunnerForRepoError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsAddCustomLabelsToSelfHostedRunnerForRepoError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsAddCustomLabelsToSelfHostedRunnerForRepoError.unknown($statusCode)'; } 
 }
