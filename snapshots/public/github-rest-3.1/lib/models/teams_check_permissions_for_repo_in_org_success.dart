// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'team_repository.dart';/// Success responses of `GET /orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}`.
sealed class TeamsCheckPermissionsForRepoInOrgSuccess {const TeamsCheckPermissionsForRepoInOrgSuccess();

/// Parse the variant matching the response status code.
factory TeamsCheckPermissionsForRepoInOrgSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => TeamsCheckPermissionsForRepoInOrgSuccess200.parse(response),
  204 => TeamsCheckPermissionsForRepoInOrgSuccess204.parse(response),
  _ => TeamsCheckPermissionsForRepoInOrgSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class TeamsCheckPermissionsForRepoInOrgSuccess200 extends TeamsCheckPermissionsForRepoInOrgSuccess {const TeamsCheckPermissionsForRepoInOrgSuccess200(this.data);

factory TeamsCheckPermissionsForRepoInOrgSuccess200.parse(ApiResponse response) { return TeamsCheckPermissionsForRepoInOrgSuccess200(TeamRepository.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final TeamRepository data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsCheckPermissionsForRepoInOrgSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TeamsCheckPermissionsForRepoInOrgSuccess200($data)'; } 
 }
/// The `204` response.
@immutable final class TeamsCheckPermissionsForRepoInOrgSuccess204 extends TeamsCheckPermissionsForRepoInOrgSuccess {const TeamsCheckPermissionsForRepoInOrgSuccess204();

factory TeamsCheckPermissionsForRepoInOrgSuccess204.parse(ApiResponse _) { return const TeamsCheckPermissionsForRepoInOrgSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is TeamsCheckPermissionsForRepoInOrgSuccess204; } 
@override int get hashCode { return (TeamsCheckPermissionsForRepoInOrgSuccess204).hashCode; } 
@override String toString() { return 'TeamsCheckPermissionsForRepoInOrgSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class TeamsCheckPermissionsForRepoInOrgSuccess$Unknown extends TeamsCheckPermissionsForRepoInOrgSuccess {const TeamsCheckPermissionsForRepoInOrgSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsCheckPermissionsForRepoInOrgSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'TeamsCheckPermissionsForRepoInOrgSuccess.unknown($statusCode)'; } 
 }
