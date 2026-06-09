// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /user/memberships/orgs/{org}`.
sealed class OrgsUpdateMembershipForAuthenticatedUserError {const OrgsUpdateMembershipForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory OrgsUpdateMembershipForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => OrgsUpdateMembershipForAuthenticatedUserError403.parse(response),
  404 => OrgsUpdateMembershipForAuthenticatedUserError404.parse(response),
  422 => OrgsUpdateMembershipForAuthenticatedUserError422.parse(response),
  _ => OrgsUpdateMembershipForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class OrgsUpdateMembershipForAuthenticatedUserError403 extends OrgsUpdateMembershipForAuthenticatedUserError {const OrgsUpdateMembershipForAuthenticatedUserError403(this.data);

factory OrgsUpdateMembershipForAuthenticatedUserError403.parse(ApiResponse response) { return OrgsUpdateMembershipForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateMembershipForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdateMembershipForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class OrgsUpdateMembershipForAuthenticatedUserError404 extends OrgsUpdateMembershipForAuthenticatedUserError {const OrgsUpdateMembershipForAuthenticatedUserError404(this.data);

factory OrgsUpdateMembershipForAuthenticatedUserError404.parse(ApiResponse response) { return OrgsUpdateMembershipForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateMembershipForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdateMembershipForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsUpdateMembershipForAuthenticatedUserError422 extends OrgsUpdateMembershipForAuthenticatedUserError {const OrgsUpdateMembershipForAuthenticatedUserError422(this.data);

factory OrgsUpdateMembershipForAuthenticatedUserError422.parse(ApiResponse response) { return OrgsUpdateMembershipForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateMembershipForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdateMembershipForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsUpdateMembershipForAuthenticatedUserError$Unknown extends OrgsUpdateMembershipForAuthenticatedUserError {const OrgsUpdateMembershipForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateMembershipForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsUpdateMembershipForAuthenticatedUserError.unknown($statusCode)'; } 
 }
