// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `POST /orgs/{org}/actions/runners/generate-jitconfig`.
sealed class ActionsGenerateRunnerJitconfigForOrgError {const ActionsGenerateRunnerJitconfigForOrgError();

/// Parse the variant matching the response status code.
factory ActionsGenerateRunnerJitconfigForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsGenerateRunnerJitconfigForOrgError404.parse(response),
  409 => ActionsGenerateRunnerJitconfigForOrgError409.parse(response),
  422 => ActionsGenerateRunnerJitconfigForOrgError422.parse(response),
  _ => ActionsGenerateRunnerJitconfigForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsGenerateRunnerJitconfigForOrgError404 extends ActionsGenerateRunnerJitconfigForOrgError {const ActionsGenerateRunnerJitconfigForOrgError404(this.data);

factory ActionsGenerateRunnerJitconfigForOrgError404.parse(ApiResponse response) { return ActionsGenerateRunnerJitconfigForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsGenerateRunnerJitconfigForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsGenerateRunnerJitconfigForOrgError404($data)'; } 
 }
/// The `409` response.
@immutable final class ActionsGenerateRunnerJitconfigForOrgError409 extends ActionsGenerateRunnerJitconfigForOrgError {const ActionsGenerateRunnerJitconfigForOrgError409(this.data);

factory ActionsGenerateRunnerJitconfigForOrgError409.parse(ApiResponse response) { return ActionsGenerateRunnerJitconfigForOrgError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsGenerateRunnerJitconfigForOrgError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsGenerateRunnerJitconfigForOrgError409($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsGenerateRunnerJitconfigForOrgError422 extends ActionsGenerateRunnerJitconfigForOrgError {const ActionsGenerateRunnerJitconfigForOrgError422(this.data);

factory ActionsGenerateRunnerJitconfigForOrgError422.parse(ApiResponse response) { return ActionsGenerateRunnerJitconfigForOrgError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsGenerateRunnerJitconfigForOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsGenerateRunnerJitconfigForOrgError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsGenerateRunnerJitconfigForOrgError$Unknown extends ActionsGenerateRunnerJitconfigForOrgError {const ActionsGenerateRunnerJitconfigForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsGenerateRunnerJitconfigForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsGenerateRunnerJitconfigForOrgError.unknown($statusCode)'; } 
 }
