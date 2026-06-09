// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `DELETE /orgs/{org}/actions/permissions/self-hosted-runners/repositories/{repository_id}`.
sealed class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError();

/// Parse the variant matching the response status code.
factory ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError403.parse(response),
  404 => ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError404.parse(response),
  409 => ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError409.parse(response),
  422 => ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError422.parse(response),
  _ => ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError403 extends ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError403(this.data);

factory ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError403.parse(ApiResponse response) { return ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError403($data)'; } 
 }
/// The `404` response.
@immutable final class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError404 extends ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError404(this.data);

factory ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError404.parse(ApiResponse response) { return ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError404($data)'; } 
 }
/// The `409` response.
@immutable final class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError409 extends ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError409(this.data);

factory ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError409.parse(ApiResponse response) { return ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError409($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError422 extends ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError422(this.data);

factory ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError422.parse(ApiResponse response) { return ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError$Unknown extends ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError.unknown($statusCode)'; } 
 }
