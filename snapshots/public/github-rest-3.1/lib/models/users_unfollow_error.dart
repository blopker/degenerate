// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /user/following/{username}`.
sealed class UsersUnfollowError {const UsersUnfollowError();

/// Parse the variant matching the response status code.
factory UsersUnfollowError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersUnfollowError304.parse(response),
  401 => UsersUnfollowError401.parse(response),
  403 => UsersUnfollowError403.parse(response),
  404 => UsersUnfollowError404.parse(response),
  _ => UsersUnfollowError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersUnfollowError304 extends UsersUnfollowError {const UsersUnfollowError304();

factory UsersUnfollowError304.parse(ApiResponse _) { return const UsersUnfollowError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersUnfollowError304; } 
@override int get hashCode { return (UsersUnfollowError304).hashCode; } 
@override String toString() { return 'UsersUnfollowError304()'; } 
 }
/// The `401` response.
@immutable final class UsersUnfollowError401 extends UsersUnfollowError {const UsersUnfollowError401(this.data);

factory UsersUnfollowError401.parse(ApiResponse response) { return UsersUnfollowError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUnfollowError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersUnfollowError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersUnfollowError403 extends UsersUnfollowError {const UsersUnfollowError403(this.data);

factory UsersUnfollowError403.parse(ApiResponse response) { return UsersUnfollowError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUnfollowError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersUnfollowError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersUnfollowError404 extends UsersUnfollowError {const UsersUnfollowError404(this.data);

factory UsersUnfollowError404.parse(ApiResponse response) { return UsersUnfollowError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUnfollowError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersUnfollowError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersUnfollowError$Unknown extends UsersUnfollowError {const UsersUnfollowError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUnfollowError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersUnfollowError.unknown($statusCode)'; } 
 }
