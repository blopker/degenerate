// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /orgs/{org}/actions/permissions/fork-pr-contributor-approval`.
sealed class ActionsSetForkPrContributorApprovalPermissionsOrganizationError {const ActionsSetForkPrContributorApprovalPermissionsOrganizationError();

/// Parse the variant matching the response status code.
factory ActionsSetForkPrContributorApprovalPermissionsOrganizationError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsSetForkPrContributorApprovalPermissionsOrganizationError404.parse(response),
  422 => ActionsSetForkPrContributorApprovalPermissionsOrganizationError422.parse(response),
  _ => ActionsSetForkPrContributorApprovalPermissionsOrganizationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsSetForkPrContributorApprovalPermissionsOrganizationError404 extends ActionsSetForkPrContributorApprovalPermissionsOrganizationError {const ActionsSetForkPrContributorApprovalPermissionsOrganizationError404(this.data);

factory ActionsSetForkPrContributorApprovalPermissionsOrganizationError404.parse(ApiResponse response) { return ActionsSetForkPrContributorApprovalPermissionsOrganizationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetForkPrContributorApprovalPermissionsOrganizationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetForkPrContributorApprovalPermissionsOrganizationError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsSetForkPrContributorApprovalPermissionsOrganizationError422 extends ActionsSetForkPrContributorApprovalPermissionsOrganizationError {const ActionsSetForkPrContributorApprovalPermissionsOrganizationError422(this.data);

factory ActionsSetForkPrContributorApprovalPermissionsOrganizationError422.parse(ApiResponse response) { return ActionsSetForkPrContributorApprovalPermissionsOrganizationError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetForkPrContributorApprovalPermissionsOrganizationError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetForkPrContributorApprovalPermissionsOrganizationError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsSetForkPrContributorApprovalPermissionsOrganizationError$Unknown extends ActionsSetForkPrContributorApprovalPermissionsOrganizationError {const ActionsSetForkPrContributorApprovalPermissionsOrganizationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetForkPrContributorApprovalPermissionsOrganizationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsSetForkPrContributorApprovalPermissionsOrganizationError.unknown($statusCode)'; } 
 }
