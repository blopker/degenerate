// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';import 'users_list_attestations_response.dart';/// Success responses of `GET /users/{username}/attestations/{subject_digest}`.
sealed class UsersListAttestationsSuccess {const UsersListAttestationsSuccess();

/// Parse the variant matching the response status code.
factory UsersListAttestationsSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => UsersListAttestationsSuccess200.parse(response),
  201 => UsersListAttestationsSuccess201.parse(response),
  204 => UsersListAttestationsSuccess204.parse(response),
  _ => UsersListAttestationsSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class UsersListAttestationsSuccess200 extends UsersListAttestationsSuccess {const UsersListAttestationsSuccess200(this.data);

factory UsersListAttestationsSuccess200.parse(ApiResponse response) { return UsersListAttestationsSuccess200(UsersListAttestationsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UsersListAttestationsResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListAttestationsSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListAttestationsSuccess200($data)'; } 
 }
/// The `201` response.
@immutable final class UsersListAttestationsSuccess201 extends UsersListAttestationsSuccess {const UsersListAttestationsSuccess201(this.data);

factory UsersListAttestationsSuccess201.parse(ApiResponse response) { return UsersListAttestationsSuccess201(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListAttestationsSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersListAttestationsSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class UsersListAttestationsSuccess204 extends UsersListAttestationsSuccess {const UsersListAttestationsSuccess204();

factory UsersListAttestationsSuccess204.parse(ApiResponse _) { return const UsersListAttestationsSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersListAttestationsSuccess204; } 
@override int get hashCode { return (UsersListAttestationsSuccess204).hashCode; } 
@override String toString() { return 'UsersListAttestationsSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersListAttestationsSuccess$Unknown extends UsersListAttestationsSuccess {const UsersListAttestationsSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersListAttestationsSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersListAttestationsSuccess.unknown($statusCode)'; } 
 }
