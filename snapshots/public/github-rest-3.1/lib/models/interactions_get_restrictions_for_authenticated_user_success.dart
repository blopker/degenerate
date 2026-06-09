// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'interaction_limit_response.dart';import 'interactions_get_restrictions_for_authenticated_user_response.dart';import 'interactions_get_restrictions_for_authenticated_user_response_variant2.dart';/// Success responses of `GET /user/interaction-limits`.
sealed class InteractionsGetRestrictionsForAuthenticatedUserSuccess {const InteractionsGetRestrictionsForAuthenticatedUserSuccess();

/// Parse the variant matching the response status code.
factory InteractionsGetRestrictionsForAuthenticatedUserSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => InteractionsGetRestrictionsForAuthenticatedUserSuccess200.parse(response),
  204 => InteractionsGetRestrictionsForAuthenticatedUserSuccess204.parse(response),
  _ => InteractionsGetRestrictionsForAuthenticatedUserSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class InteractionsGetRestrictionsForAuthenticatedUserSuccess200 extends InteractionsGetRestrictionsForAuthenticatedUserSuccess {const InteractionsGetRestrictionsForAuthenticatedUserSuccess200(this.data);

factory InteractionsGetRestrictionsForAuthenticatedUserSuccess200.parse(ApiResponse response) { return InteractionsGetRestrictionsForAuthenticatedUserSuccess200(OneOf2.parse(jsonDecode(response.body), fromA: (v) => InteractionLimitResponse.fromJson(v as Map<String, dynamic>), fromB: (v) => InteractionsGetRestrictionsForAuthenticatedUserResponseVariant2.fromJson(v as Map<String, dynamic>),)); }

final InteractionsGetRestrictionsForAuthenticatedUserResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is InteractionsGetRestrictionsForAuthenticatedUserSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'InteractionsGetRestrictionsForAuthenticatedUserSuccess200($data)'; } 
 }
/// The `204` response.
@immutable final class InteractionsGetRestrictionsForAuthenticatedUserSuccess204 extends InteractionsGetRestrictionsForAuthenticatedUserSuccess {const InteractionsGetRestrictionsForAuthenticatedUserSuccess204();

factory InteractionsGetRestrictionsForAuthenticatedUserSuccess204.parse(ApiResponse _) { return const InteractionsGetRestrictionsForAuthenticatedUserSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is InteractionsGetRestrictionsForAuthenticatedUserSuccess204; } 
@override int get hashCode { return (InteractionsGetRestrictionsForAuthenticatedUserSuccess204).hashCode; } 
@override String toString() { return 'InteractionsGetRestrictionsForAuthenticatedUserSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class InteractionsGetRestrictionsForAuthenticatedUserSuccess$Unknown extends InteractionsGetRestrictionsForAuthenticatedUserSuccess {const InteractionsGetRestrictionsForAuthenticatedUserSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is InteractionsGetRestrictionsForAuthenticatedUserSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'InteractionsGetRestrictionsForAuthenticatedUserSuccess.unknown($statusCode)'; } 
 }
