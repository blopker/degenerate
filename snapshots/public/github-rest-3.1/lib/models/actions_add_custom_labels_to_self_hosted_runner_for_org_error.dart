// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `POST /orgs/{org}/actions/runners/{runner_id}/labels`.
sealed class ActionsAddCustomLabelsToSelfHostedRunnerForOrgError {const ActionsAddCustomLabelsToSelfHostedRunnerForOrgError();

/// Parse the variant matching the response status code.
factory ActionsAddCustomLabelsToSelfHostedRunnerForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsAddCustomLabelsToSelfHostedRunnerForOrgError404.parse(response),
  422 => ActionsAddCustomLabelsToSelfHostedRunnerForOrgError422.parse(response),
  _ => ActionsAddCustomLabelsToSelfHostedRunnerForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsAddCustomLabelsToSelfHostedRunnerForOrgError404 extends ActionsAddCustomLabelsToSelfHostedRunnerForOrgError {const ActionsAddCustomLabelsToSelfHostedRunnerForOrgError404(this.data);

factory ActionsAddCustomLabelsToSelfHostedRunnerForOrgError404.parse(ApiResponse response) { return ActionsAddCustomLabelsToSelfHostedRunnerForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsAddCustomLabelsToSelfHostedRunnerForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsAddCustomLabelsToSelfHostedRunnerForOrgError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsAddCustomLabelsToSelfHostedRunnerForOrgError422 extends ActionsAddCustomLabelsToSelfHostedRunnerForOrgError {const ActionsAddCustomLabelsToSelfHostedRunnerForOrgError422(this.data);

factory ActionsAddCustomLabelsToSelfHostedRunnerForOrgError422.parse(ApiResponse response) { return ActionsAddCustomLabelsToSelfHostedRunnerForOrgError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsAddCustomLabelsToSelfHostedRunnerForOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsAddCustomLabelsToSelfHostedRunnerForOrgError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsAddCustomLabelsToSelfHostedRunnerForOrgError$Unknown extends ActionsAddCustomLabelsToSelfHostedRunnerForOrgError {const ActionsAddCustomLabelsToSelfHostedRunnerForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsAddCustomLabelsToSelfHostedRunnerForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsAddCustomLabelsToSelfHostedRunnerForOrgError.unknown($statusCode)'; } 
 }
