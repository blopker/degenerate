// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /users/{username}/hovercard`.
sealed class UsersGetContextForUserError {const UsersGetContextForUserError();

/// Parse the variant matching the response status code.
factory UsersGetContextForUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => UsersGetContextForUserError404.parse(response),
  422 => UsersGetContextForUserError422.parse(response),
  _ => UsersGetContextForUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class UsersGetContextForUserError404 extends UsersGetContextForUserError {const UsersGetContextForUserError404(this.data);

factory UsersGetContextForUserError404.parse(ApiResponse response) { return UsersGetContextForUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetContextForUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetContextForUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersGetContextForUserError422 extends UsersGetContextForUserError {const UsersGetContextForUserError422(this.data);

factory UsersGetContextForUserError422.parse(ApiResponse response) { return UsersGetContextForUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetContextForUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersGetContextForUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersGetContextForUserError$Unknown extends UsersGetContextForUserError {const UsersGetContextForUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetContextForUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersGetContextForUserError.unknown($statusCode)'; } 
 }
