// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/actions/permissions/fork-pr-contributor-approval`.
sealed class ActionsSetForkPrContributorApprovalPermissionsRepositoryError {const ActionsSetForkPrContributorApprovalPermissionsRepositoryError();

/// Parse the variant matching the response status code.
factory ActionsSetForkPrContributorApprovalPermissionsRepositoryError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ActionsSetForkPrContributorApprovalPermissionsRepositoryError404.parse(response),
  422 => ActionsSetForkPrContributorApprovalPermissionsRepositoryError422.parse(response),
  _ => ActionsSetForkPrContributorApprovalPermissionsRepositoryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ActionsSetForkPrContributorApprovalPermissionsRepositoryError404 extends ActionsSetForkPrContributorApprovalPermissionsRepositoryError {const ActionsSetForkPrContributorApprovalPermissionsRepositoryError404(this.data);

factory ActionsSetForkPrContributorApprovalPermissionsRepositoryError404.parse(ApiResponse response) { return ActionsSetForkPrContributorApprovalPermissionsRepositoryError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetForkPrContributorApprovalPermissionsRepositoryError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetForkPrContributorApprovalPermissionsRepositoryError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsSetForkPrContributorApprovalPermissionsRepositoryError422 extends ActionsSetForkPrContributorApprovalPermissionsRepositoryError {const ActionsSetForkPrContributorApprovalPermissionsRepositoryError422(this.data);

factory ActionsSetForkPrContributorApprovalPermissionsRepositoryError422.parse(ApiResponse response) { return ActionsSetForkPrContributorApprovalPermissionsRepositoryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetForkPrContributorApprovalPermissionsRepositoryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetForkPrContributorApprovalPermissionsRepositoryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsSetForkPrContributorApprovalPermissionsRepositoryError$Unknown extends ActionsSetForkPrContributorApprovalPermissionsRepositoryError {const ActionsSetForkPrContributorApprovalPermissionsRepositoryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetForkPrContributorApprovalPermissionsRepositoryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsSetForkPrContributorApprovalPermissionsRepositoryError.unknown($statusCode)'; } 
 }
