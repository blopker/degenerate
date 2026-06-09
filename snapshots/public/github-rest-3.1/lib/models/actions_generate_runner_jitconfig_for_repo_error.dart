// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `POST /repos/{owner}/{repo}/actions/runners/generate-jitconfig`.
sealed class ActionsGenerateRunnerJitconfigForRepoError {const ActionsGenerateRunnerJitconfigForRepoError();

/// Parse the variant matching the response status code.
factory ActionsGenerateRunnerJitconfigForRepoError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsGenerateRunnerJitconfigForRepoError404.parse(response),
  409 => ActionsGenerateRunnerJitconfigForRepoError409.parse(response),
  422 => ActionsGenerateRunnerJitconfigForRepoError422.parse(response),
  _ => ActionsGenerateRunnerJitconfigForRepoError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsGenerateRunnerJitconfigForRepoError404 extends ActionsGenerateRunnerJitconfigForRepoError {const ActionsGenerateRunnerJitconfigForRepoError404(this.data);

factory ActionsGenerateRunnerJitconfigForRepoError404.parse(ApiResponse response) { return ActionsGenerateRunnerJitconfigForRepoError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsGenerateRunnerJitconfigForRepoError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsGenerateRunnerJitconfigForRepoError404($data)'; } 
 }
/// The `409` response.
@immutable final class ActionsGenerateRunnerJitconfigForRepoError409 extends ActionsGenerateRunnerJitconfigForRepoError {const ActionsGenerateRunnerJitconfigForRepoError409(this.data);

factory ActionsGenerateRunnerJitconfigForRepoError409.parse(ApiResponse response) { return ActionsGenerateRunnerJitconfigForRepoError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsGenerateRunnerJitconfigForRepoError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsGenerateRunnerJitconfigForRepoError409($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsGenerateRunnerJitconfigForRepoError422 extends ActionsGenerateRunnerJitconfigForRepoError {const ActionsGenerateRunnerJitconfigForRepoError422(this.data);

factory ActionsGenerateRunnerJitconfigForRepoError422.parse(ApiResponse response) { return ActionsGenerateRunnerJitconfigForRepoError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsGenerateRunnerJitconfigForRepoError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsGenerateRunnerJitconfigForRepoError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsGenerateRunnerJitconfigForRepoError$Unknown extends ActionsGenerateRunnerJitconfigForRepoError {const ActionsGenerateRunnerJitconfigForRepoError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsGenerateRunnerJitconfigForRepoError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsGenerateRunnerJitconfigForRepoError.unknown($statusCode)'; } 
 }
