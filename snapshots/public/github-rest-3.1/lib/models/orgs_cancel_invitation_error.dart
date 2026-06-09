// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `DELETE /orgs/{org}/invitations/{invitation_id}`.
sealed class OrgsCancelInvitationError {const OrgsCancelInvitationError();

/// Parse the variant matching the response status code.
factory OrgsCancelInvitationError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => OrgsCancelInvitationError404.parse(response),
  422 => OrgsCancelInvitationError422.parse(response),
  _ => OrgsCancelInvitationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class OrgsCancelInvitationError404 extends OrgsCancelInvitationError {const OrgsCancelInvitationError404(this.data);

factory OrgsCancelInvitationError404.parse(ApiResponse response) { return OrgsCancelInvitationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCancelInvitationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCancelInvitationError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsCancelInvitationError422 extends OrgsCancelInvitationError {const OrgsCancelInvitationError422(this.data);

factory OrgsCancelInvitationError422.parse(ApiResponse response) { return OrgsCancelInvitationError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCancelInvitationError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCancelInvitationError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsCancelInvitationError$Unknown extends OrgsCancelInvitationError {const OrgsCancelInvitationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCancelInvitationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsCancelInvitationError.unknown($statusCode)'; } 
 }
