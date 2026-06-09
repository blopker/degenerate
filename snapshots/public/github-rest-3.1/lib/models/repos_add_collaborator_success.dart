// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_invitation.dart';/// Success responses of `PUT /repos/{owner}/{repo}/collaborators/{username}`.
sealed class ReposAddCollaboratorSuccess {const ReposAddCollaboratorSuccess();

/// Parse the variant matching the response status code.
factory ReposAddCollaboratorSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => ReposAddCollaboratorSuccess201.parse(response),
  204 => ReposAddCollaboratorSuccess204.parse(response),
  _ => ReposAddCollaboratorSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class ReposAddCollaboratorSuccess201 extends ReposAddCollaboratorSuccess {const ReposAddCollaboratorSuccess201(this.data);

factory ReposAddCollaboratorSuccess201.parse(ApiResponse response) { return ReposAddCollaboratorSuccess201(RepositoryInvitation.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final RepositoryInvitation data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposAddCollaboratorSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposAddCollaboratorSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class ReposAddCollaboratorSuccess204 extends ReposAddCollaboratorSuccess {const ReposAddCollaboratorSuccess204();

factory ReposAddCollaboratorSuccess204.parse(ApiResponse _) { return const ReposAddCollaboratorSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposAddCollaboratorSuccess204; } 
@override int get hashCode { return (ReposAddCollaboratorSuccess204).hashCode; } 
@override String toString() { return 'ReposAddCollaboratorSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposAddCollaboratorSuccess$Unknown extends ReposAddCollaboratorSuccess {const ReposAddCollaboratorSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposAddCollaboratorSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposAddCollaboratorSuccess.unknown($statusCode)'; } 
 }
