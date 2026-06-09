// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /orgs/{org}/actions/permissions/self-hosted-runners/repositories/{repository_id}`.
sealed class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError();

/// Parse the variant matching the response status code.
factory ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError403.parse(response),
  404 => ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError404.parse(response),
  409 => ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError409.parse(response),
  422 => ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError422.parse(response),
  _ => ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError403 extends ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError403(this.data);

factory ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError403.parse(ApiResponse response) { return ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError403($data)'; } 
 }
/// The `404` response.
@immutable final class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError404 extends ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError404(this.data);

factory ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError404.parse(ApiResponse response) { return ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError404($data)'; } 
 }
/// The `409` response.
@immutable final class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError409 extends ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError409(this.data);

factory ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError409.parse(ApiResponse response) { return ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError409($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError422 extends ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError422(this.data);

factory ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError422.parse(ApiResponse response) { return ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError$Unknown extends ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError.unknown($statusCode)'; } 
 }
