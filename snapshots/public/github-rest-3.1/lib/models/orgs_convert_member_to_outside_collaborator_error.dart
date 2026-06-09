// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `PUT /orgs/{org}/outside_collaborators/{username}`.
sealed class OrgsConvertMemberToOutsideCollaboratorError {const OrgsConvertMemberToOutsideCollaboratorError();

/// Parse the variant matching the response status code.
factory OrgsConvertMemberToOutsideCollaboratorError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => OrgsConvertMemberToOutsideCollaboratorError403.parse(response),
  404 => OrgsConvertMemberToOutsideCollaboratorError404.parse(response),
  _ => OrgsConvertMemberToOutsideCollaboratorError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class OrgsConvertMemberToOutsideCollaboratorError403 extends OrgsConvertMemberToOutsideCollaboratorError {const OrgsConvertMemberToOutsideCollaboratorError403();

factory OrgsConvertMemberToOutsideCollaboratorError403.parse(ApiResponse _) { return const OrgsConvertMemberToOutsideCollaboratorError403(); }

@override bool operator ==(Object other) { return identical(this, other) || other is OrgsConvertMemberToOutsideCollaboratorError403; } 
@override int get hashCode { return (OrgsConvertMemberToOutsideCollaboratorError403).hashCode; } 
@override String toString() { return 'OrgsConvertMemberToOutsideCollaboratorError403()'; } 
 }
/// The `404` response.
@immutable final class OrgsConvertMemberToOutsideCollaboratorError404 extends OrgsConvertMemberToOutsideCollaboratorError {const OrgsConvertMemberToOutsideCollaboratorError404(this.data);

factory OrgsConvertMemberToOutsideCollaboratorError404.parse(ApiResponse response) { return OrgsConvertMemberToOutsideCollaboratorError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsConvertMemberToOutsideCollaboratorError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsConvertMemberToOutsideCollaboratorError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsConvertMemberToOutsideCollaboratorError$Unknown extends OrgsConvertMemberToOutsideCollaboratorError {const OrgsConvertMemberToOutsideCollaboratorError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsConvertMemberToOutsideCollaboratorError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsConvertMemberToOutsideCollaboratorError.unknown($statusCode)'; } 
 }
