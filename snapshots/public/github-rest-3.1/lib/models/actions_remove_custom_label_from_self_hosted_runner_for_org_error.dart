// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `DELETE /orgs/{org}/actions/runners/{runner_id}/labels/{name}`.
sealed class ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError();

/// Parse the variant matching the response status code.
factory ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError404.parse(response),
  422 => ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError422.parse(response),
  _ => ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError404 extends ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError404(this.data);

factory ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError404.parse(ApiResponse response) { return ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError422 extends ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError422(this.data);

factory ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError422.parse(ApiResponse response) { return ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError$Unknown extends ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsRemoveCustomLabelFromSelfHostedRunnerForOrgError.unknown($statusCode)'; } 
 }
