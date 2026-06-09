// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'orgs_convert_member_to_outside_collaborator_response.dart';/// Success responses of `PUT /orgs/{org}/outside_collaborators/{username}`.
sealed class OrgsConvertMemberToOutsideCollaboratorSuccess {const OrgsConvertMemberToOutsideCollaboratorSuccess();

/// Parse the variant matching the response status code.
factory OrgsConvertMemberToOutsideCollaboratorSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  202 => OrgsConvertMemberToOutsideCollaboratorSuccess202.parse(response),
  204 => OrgsConvertMemberToOutsideCollaboratorSuccess204.parse(response),
  _ => OrgsConvertMemberToOutsideCollaboratorSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `202` response.
@immutable final class OrgsConvertMemberToOutsideCollaboratorSuccess202 extends OrgsConvertMemberToOutsideCollaboratorSuccess {const OrgsConvertMemberToOutsideCollaboratorSuccess202(this.data);

factory OrgsConvertMemberToOutsideCollaboratorSuccess202.parse(ApiResponse response) { return OrgsConvertMemberToOutsideCollaboratorSuccess202(OrgsConvertMemberToOutsideCollaboratorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final OrgsConvertMemberToOutsideCollaboratorResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsConvertMemberToOutsideCollaboratorSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsConvertMemberToOutsideCollaboratorSuccess202($data)'; } 
 }
/// The `204` response.
@immutable final class OrgsConvertMemberToOutsideCollaboratorSuccess204 extends OrgsConvertMemberToOutsideCollaboratorSuccess {const OrgsConvertMemberToOutsideCollaboratorSuccess204();

factory OrgsConvertMemberToOutsideCollaboratorSuccess204.parse(ApiResponse _) { return const OrgsConvertMemberToOutsideCollaboratorSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is OrgsConvertMemberToOutsideCollaboratorSuccess204; } 
@override int get hashCode { return (OrgsConvertMemberToOutsideCollaboratorSuccess204).hashCode; } 
@override String toString() { return 'OrgsConvertMemberToOutsideCollaboratorSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsConvertMemberToOutsideCollaboratorSuccess$Unknown extends OrgsConvertMemberToOutsideCollaboratorSuccess {const OrgsConvertMemberToOutsideCollaboratorSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsConvertMemberToOutsideCollaboratorSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsConvertMemberToOutsideCollaboratorSuccess.unknown($statusCode)'; } 
 }
