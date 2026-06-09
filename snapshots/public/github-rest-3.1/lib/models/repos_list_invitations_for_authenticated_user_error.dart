// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/repository_invitations`.
sealed class ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ReposListInvitationsForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ReposListInvitationsForAuthenticatedUserError304.parse(response),
  401 => ReposListInvitationsForAuthenticatedUserError401.parse(response),
  403 => ReposListInvitationsForAuthenticatedUserError403.parse(response),
  404 => ReposListInvitationsForAuthenticatedUserError404.parse(response),
  _ => ReposListInvitationsForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ReposListInvitationsForAuthenticatedUserError304 extends ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError304();

factory ReposListInvitationsForAuthenticatedUserError304.parse(ApiResponse _) { return const ReposListInvitationsForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposListInvitationsForAuthenticatedUserError304; } 
@override int get hashCode { return (ReposListInvitationsForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ReposListInvitationsForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class ReposListInvitationsForAuthenticatedUserError401 extends ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError401(this.data);

factory ReposListInvitationsForAuthenticatedUserError401.parse(ApiResponse response) { return ReposListInvitationsForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListInvitationsForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListInvitationsForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ReposListInvitationsForAuthenticatedUserError403 extends ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError403(this.data);

factory ReposListInvitationsForAuthenticatedUserError403.parse(ApiResponse response) { return ReposListInvitationsForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListInvitationsForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListInvitationsForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposListInvitationsForAuthenticatedUserError404 extends ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError404(this.data);

factory ReposListInvitationsForAuthenticatedUserError404.parse(ApiResponse response) { return ReposListInvitationsForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListInvitationsForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListInvitationsForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposListInvitationsForAuthenticatedUserError$Unknown extends ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListInvitationsForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposListInvitationsForAuthenticatedUserError.unknown($statusCode)'; } 
 }
