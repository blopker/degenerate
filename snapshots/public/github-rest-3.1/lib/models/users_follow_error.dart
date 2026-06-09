// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /user/following/{username}`.
sealed class UsersFollowError {const UsersFollowError();

/// Parse the variant matching the response status code.
factory UsersFollowError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersFollowError304.parse(response),
  401 => UsersFollowError401.parse(response),
  403 => UsersFollowError403.parse(response),
  404 => UsersFollowError404.parse(response),
  422 => UsersFollowError422.parse(response),
  _ => UsersFollowError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersFollowError304 extends UsersFollowError {const UsersFollowError304();

factory UsersFollowError304.parse(ApiResponse _) { return const UsersFollowError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersFollowError304; } 
@override int get hashCode { return (UsersFollowError304).hashCode; } 
@override String toString() { return 'UsersFollowError304()'; } 
 }
/// The `401` response.
@immutable final class UsersFollowError401 extends UsersFollowError {const UsersFollowError401(this.data);

factory UsersFollowError401.parse(ApiResponse response) { return UsersFollowError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersFollowError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersFollowError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersFollowError403 extends UsersFollowError {const UsersFollowError403(this.data);

factory UsersFollowError403.parse(ApiResponse response) { return UsersFollowError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersFollowError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersFollowError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersFollowError404 extends UsersFollowError {const UsersFollowError404(this.data);

factory UsersFollowError404.parse(ApiResponse response) { return UsersFollowError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersFollowError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersFollowError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersFollowError422 extends UsersFollowError {const UsersFollowError422(this.data);

factory UsersFollowError422.parse(ApiResponse response) { return UsersFollowError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersFollowError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersFollowError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersFollowError$Unknown extends UsersFollowError {const UsersFollowError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersFollowError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersFollowError.unknown($statusCode)'; } 
 }
