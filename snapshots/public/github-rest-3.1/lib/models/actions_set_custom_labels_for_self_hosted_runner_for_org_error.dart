// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `PUT /orgs/{org}/actions/runners/{runner_id}/labels`.
sealed class ActionsSetCustomLabelsForSelfHostedRunnerForOrgError {const ActionsSetCustomLabelsForSelfHostedRunnerForOrgError();

/// Parse the variant matching the response status code.
factory ActionsSetCustomLabelsForSelfHostedRunnerForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsSetCustomLabelsForSelfHostedRunnerForOrgError404.parse(response),
  422 => ActionsSetCustomLabelsForSelfHostedRunnerForOrgError422.parse(response),
  _ => ActionsSetCustomLabelsForSelfHostedRunnerForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsSetCustomLabelsForSelfHostedRunnerForOrgError404 extends ActionsSetCustomLabelsForSelfHostedRunnerForOrgError {const ActionsSetCustomLabelsForSelfHostedRunnerForOrgError404(this.data);

factory ActionsSetCustomLabelsForSelfHostedRunnerForOrgError404.parse(ApiResponse response) { return ActionsSetCustomLabelsForSelfHostedRunnerForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetCustomLabelsForSelfHostedRunnerForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetCustomLabelsForSelfHostedRunnerForOrgError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsSetCustomLabelsForSelfHostedRunnerForOrgError422 extends ActionsSetCustomLabelsForSelfHostedRunnerForOrgError {const ActionsSetCustomLabelsForSelfHostedRunnerForOrgError422(this.data);

factory ActionsSetCustomLabelsForSelfHostedRunnerForOrgError422.parse(ApiResponse response) { return ActionsSetCustomLabelsForSelfHostedRunnerForOrgError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetCustomLabelsForSelfHostedRunnerForOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetCustomLabelsForSelfHostedRunnerForOrgError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsSetCustomLabelsForSelfHostedRunnerForOrgError$Unknown extends ActionsSetCustomLabelsForSelfHostedRunnerForOrgError {const ActionsSetCustomLabelsForSelfHostedRunnerForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetCustomLabelsForSelfHostedRunnerForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsSetCustomLabelsForSelfHostedRunnerForOrgError.unknown($statusCode)'; } 
 }
