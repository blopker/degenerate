// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /user/memberships/orgs`.
sealed class OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory OrgsListMembershipsForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => OrgsListMembershipsForAuthenticatedUserError304.parse(response),
  401 => OrgsListMembershipsForAuthenticatedUserError401.parse(response),
  403 => OrgsListMembershipsForAuthenticatedUserError403.parse(response),
  422 => OrgsListMembershipsForAuthenticatedUserError422.parse(response),
  _ => OrgsListMembershipsForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class OrgsListMembershipsForAuthenticatedUserError304 extends OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError304();

factory OrgsListMembershipsForAuthenticatedUserError304.parse(ApiResponse _) { return const OrgsListMembershipsForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is OrgsListMembershipsForAuthenticatedUserError304; } 
@override int get hashCode { return (OrgsListMembershipsForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'OrgsListMembershipsForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class OrgsListMembershipsForAuthenticatedUserError401 extends OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError401(this.data);

factory OrgsListMembershipsForAuthenticatedUserError401.parse(ApiResponse response) { return OrgsListMembershipsForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListMembershipsForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListMembershipsForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class OrgsListMembershipsForAuthenticatedUserError403 extends OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError403(this.data);

factory OrgsListMembershipsForAuthenticatedUserError403.parse(ApiResponse response) { return OrgsListMembershipsForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListMembershipsForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListMembershipsForAuthenticatedUserError403($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsListMembershipsForAuthenticatedUserError422 extends OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError422(this.data);

factory OrgsListMembershipsForAuthenticatedUserError422.parse(ApiResponse response) { return OrgsListMembershipsForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListMembershipsForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListMembershipsForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsListMembershipsForAuthenticatedUserError$Unknown extends OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListMembershipsForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsListMembershipsForAuthenticatedUserError.unknown($statusCode)'; } 
 }
