// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /orgs/{org}/actions/permissions/self-hosted-runners`.
sealed class ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError();

/// Parse the variant matching the response status code.
factory ActionsSetSelfHostedRunnersPermissionsOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ActionsSetSelfHostedRunnersPermissionsOrganizationError403.parse(response),
  404 => ActionsSetSelfHostedRunnersPermissionsOrganizationError404.parse(response),
  409 => ActionsSetSelfHostedRunnersPermissionsOrganizationError409.parse(response),
  422 => ActionsSetSelfHostedRunnersPermissionsOrganizationError422.parse(response),
  _ => ActionsSetSelfHostedRunnersPermissionsOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ActionsSetSelfHostedRunnersPermissionsOrganizationError403 extends ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError403(this.data);

factory ActionsSetSelfHostedRunnersPermissionsOrganizationError403.parse(ApiResponse response) { return ActionsSetSelfHostedRunnersPermissionsOrganizationError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetSelfHostedRunnersPermissionsOrganizationError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetSelfHostedRunnersPermissionsOrganizationError403($data)'; } 
 }
/// The `404` response.
@immutable final class ActionsSetSelfHostedRunnersPermissionsOrganizationError404 extends ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError404(this.data);

factory ActionsSetSelfHostedRunnersPermissionsOrganizationError404.parse(ApiResponse response) { return ActionsSetSelfHostedRunnersPermissionsOrganizationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetSelfHostedRunnersPermissionsOrganizationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetSelfHostedRunnersPermissionsOrganizationError404($data)'; } 
 }
/// The `409` response.
@immutable final class ActionsSetSelfHostedRunnersPermissionsOrganizationError409 extends ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError409(this.data);

factory ActionsSetSelfHostedRunnersPermissionsOrganizationError409.parse(ApiResponse response) { return ActionsSetSelfHostedRunnersPermissionsOrganizationError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetSelfHostedRunnersPermissionsOrganizationError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetSelfHostedRunnersPermissionsOrganizationError409($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsSetSelfHostedRunnersPermissionsOrganizationError422 extends ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError422(this.data);

factory ActionsSetSelfHostedRunnersPermissionsOrganizationError422.parse(ApiResponse response) { return ActionsSetSelfHostedRunnersPermissionsOrganizationError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetSelfHostedRunnersPermissionsOrganizationError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetSelfHostedRunnersPermissionsOrganizationError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsSetSelfHostedRunnersPermissionsOrganizationError$Unknown extends ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetSelfHostedRunnersPermissionsOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsSetSelfHostedRunnersPermissionsOrganizationError.unknown($statusCode)'; } 
 }
