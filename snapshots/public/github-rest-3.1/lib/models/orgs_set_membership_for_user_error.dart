// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /orgs/{org}/memberships/{username}`.
sealed class OrgsSetMembershipForUserError {const OrgsSetMembershipForUserError();

/// Parse the variant matching the response status code.
factory OrgsSetMembershipForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => OrgsSetMembershipForUserError403.parse(response),
  422 => OrgsSetMembershipForUserError422.parse(response),
  _ => OrgsSetMembershipForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class OrgsSetMembershipForUserError403 extends OrgsSetMembershipForUserError {const OrgsSetMembershipForUserError403(this.data);

factory OrgsSetMembershipForUserError403.parse(ApiResponse response) { return OrgsSetMembershipForUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsSetMembershipForUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsSetMembershipForUserError403($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsSetMembershipForUserError422 extends OrgsSetMembershipForUserError {const OrgsSetMembershipForUserError422(this.data);

factory OrgsSetMembershipForUserError422.parse(ApiResponse response) { return OrgsSetMembershipForUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsSetMembershipForUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsSetMembershipForUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsSetMembershipForUserError$Unknown extends OrgsSetMembershipForUserError {const OrgsSetMembershipForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsSetMembershipForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsSetMembershipForUserError.unknown($statusCode)'; } 
 }
