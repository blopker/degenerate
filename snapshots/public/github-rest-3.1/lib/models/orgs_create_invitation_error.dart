// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/invitations`.
sealed class OrgsCreateInvitationError {const OrgsCreateInvitationError();

/// Parse the variant matching the response status code.
factory OrgsCreateInvitationError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => OrgsCreateInvitationError404.parse(response),
  422 => OrgsCreateInvitationError422.parse(response),
  _ => OrgsCreateInvitationError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class OrgsCreateInvitationError404 extends OrgsCreateInvitationError {const OrgsCreateInvitationError404(this.data);

factory OrgsCreateInvitationError404.parse(ApiResponse response) { return OrgsCreateInvitationError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateInvitationError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCreateInvitationError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsCreateInvitationError422 extends OrgsCreateInvitationError {const OrgsCreateInvitationError422(this.data);

factory OrgsCreateInvitationError422.parse(ApiResponse response) { return OrgsCreateInvitationError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateInvitationError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCreateInvitationError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsCreateInvitationError$Unknown extends OrgsCreateInvitationError {const OrgsCreateInvitationError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateInvitationError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsCreateInvitationError.unknown($statusCode)'; } 
 }
