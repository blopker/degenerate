// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `PUT /repos/{owner}/{repo}/actions/runners/{runner_id}/labels`.
sealed class ActionsSetCustomLabelsForSelfHostedRunnerForRepoError {const ActionsSetCustomLabelsForSelfHostedRunnerForRepoError();

/// Parse the variant matching the response status code.
factory ActionsSetCustomLabelsForSelfHostedRunnerForRepoError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsSetCustomLabelsForSelfHostedRunnerForRepoError404.parse(response),
  422 => ActionsSetCustomLabelsForSelfHostedRunnerForRepoError422.parse(response),
  _ => ActionsSetCustomLabelsForSelfHostedRunnerForRepoError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsSetCustomLabelsForSelfHostedRunnerForRepoError404 extends ActionsSetCustomLabelsForSelfHostedRunnerForRepoError {const ActionsSetCustomLabelsForSelfHostedRunnerForRepoError404(this.data);

factory ActionsSetCustomLabelsForSelfHostedRunnerForRepoError404.parse(ApiResponse response) { return ActionsSetCustomLabelsForSelfHostedRunnerForRepoError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetCustomLabelsForSelfHostedRunnerForRepoError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetCustomLabelsForSelfHostedRunnerForRepoError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsSetCustomLabelsForSelfHostedRunnerForRepoError422 extends ActionsSetCustomLabelsForSelfHostedRunnerForRepoError {const ActionsSetCustomLabelsForSelfHostedRunnerForRepoError422(this.data);

factory ActionsSetCustomLabelsForSelfHostedRunnerForRepoError422.parse(ApiResponse response) { return ActionsSetCustomLabelsForSelfHostedRunnerForRepoError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetCustomLabelsForSelfHostedRunnerForRepoError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetCustomLabelsForSelfHostedRunnerForRepoError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsSetCustomLabelsForSelfHostedRunnerForRepoError$Unknown extends ActionsSetCustomLabelsForSelfHostedRunnerForRepoError {const ActionsSetCustomLabelsForSelfHostedRunnerForRepoError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetCustomLabelsForSelfHostedRunnerForRepoError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsSetCustomLabelsForSelfHostedRunnerForRepoError.unknown($statusCode)'; } 
 }
