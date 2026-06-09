// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /user/repository_invitations/{invitation_id}`.
sealed class ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ReposDeclineInvitationForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ReposDeclineInvitationForAuthenticatedUserError304.parse(response),
  403 => ReposDeclineInvitationForAuthenticatedUserError403.parse(response),
  404 => ReposDeclineInvitationForAuthenticatedUserError404.parse(response),
  409 => ReposDeclineInvitationForAuthenticatedUserError409.parse(response),
  _ => ReposDeclineInvitationForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ReposDeclineInvitationForAuthenticatedUserError304 extends ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError304();

factory ReposDeclineInvitationForAuthenticatedUserError304.parse(ApiResponse _) { return const ReposDeclineInvitationForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposDeclineInvitationForAuthenticatedUserError304; } 
@override int get hashCode { return (ReposDeclineInvitationForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ReposDeclineInvitationForAuthenticatedUserError304()'; } 
 }
/// The `403` response.
@immutable final class ReposDeclineInvitationForAuthenticatedUserError403 extends ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError403(this.data);

factory ReposDeclineInvitationForAuthenticatedUserError403.parse(ApiResponse response) { return ReposDeclineInvitationForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeclineInvitationForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeclineInvitationForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposDeclineInvitationForAuthenticatedUserError404 extends ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError404(this.data);

factory ReposDeclineInvitationForAuthenticatedUserError404.parse(ApiResponse response) { return ReposDeclineInvitationForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeclineInvitationForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeclineInvitationForAuthenticatedUserError404($data)'; } 
 }
/// The `409` response.
@immutable final class ReposDeclineInvitationForAuthenticatedUserError409 extends ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError409(this.data);

factory ReposDeclineInvitationForAuthenticatedUserError409.parse(ApiResponse response) { return ReposDeclineInvitationForAuthenticatedUserError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeclineInvitationForAuthenticatedUserError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeclineInvitationForAuthenticatedUserError409($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposDeclineInvitationForAuthenticatedUserError$Unknown extends ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeclineInvitationForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposDeclineInvitationForAuthenticatedUserError.unknown($statusCode)'; } 
 }
