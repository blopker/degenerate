// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `PATCH /user/repository_invitations/{invitation_id}`.
sealed class ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ReposAcceptInvitationForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ReposAcceptInvitationForAuthenticatedUserError304.parse(response),
  403 => ReposAcceptInvitationForAuthenticatedUserError403.parse(response),
  404 => ReposAcceptInvitationForAuthenticatedUserError404.parse(response),
  409 => ReposAcceptInvitationForAuthenticatedUserError409.parse(response),
  _ => ReposAcceptInvitationForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ReposAcceptInvitationForAuthenticatedUserError304 extends ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError304();

factory ReposAcceptInvitationForAuthenticatedUserError304.parse(ApiResponse _) { return const ReposAcceptInvitationForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposAcceptInvitationForAuthenticatedUserError304; } 
@override int get hashCode { return (ReposAcceptInvitationForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ReposAcceptInvitationForAuthenticatedUserError304()'; } 
 }
/// The `403` response.
@immutable final class ReposAcceptInvitationForAuthenticatedUserError403 extends ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError403(this.data);

factory ReposAcceptInvitationForAuthenticatedUserError403.parse(ApiResponse response) { return ReposAcceptInvitationForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposAcceptInvitationForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposAcceptInvitationForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposAcceptInvitationForAuthenticatedUserError404 extends ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError404(this.data);

factory ReposAcceptInvitationForAuthenticatedUserError404.parse(ApiResponse response) { return ReposAcceptInvitationForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposAcceptInvitationForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposAcceptInvitationForAuthenticatedUserError404($data)'; } 
 }
/// The `409` response.
@immutable final class ReposAcceptInvitationForAuthenticatedUserError409 extends ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError409(this.data);

factory ReposAcceptInvitationForAuthenticatedUserError409.parse(ApiResponse response) { return ReposAcceptInvitationForAuthenticatedUserError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposAcceptInvitationForAuthenticatedUserError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposAcceptInvitationForAuthenticatedUserError409($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposAcceptInvitationForAuthenticatedUserError$Unknown extends ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposAcceptInvitationForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposAcceptInvitationForAuthenticatedUserError.unknown($statusCode)'; } 
 }
