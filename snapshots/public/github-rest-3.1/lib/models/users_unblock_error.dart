// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /user/blocks/{username}`.
sealed class UsersUnblockError {const UsersUnblockError();

/// Parse the variant matching the response status code.
factory UsersUnblockError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersUnblockError304.parse(response),
  401 => UsersUnblockError401.parse(response),
  403 => UsersUnblockError403.parse(response),
  404 => UsersUnblockError404.parse(response),
  _ => UsersUnblockError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersUnblockError304 extends UsersUnblockError {const UsersUnblockError304();

factory UsersUnblockError304.parse(ApiResponse _) { return const UsersUnblockError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersUnblockError304; } 
@override int get hashCode { return (UsersUnblockError304).hashCode; } 
@override String toString() { return 'UsersUnblockError304()'; } 
 }
/// The `401` response.
@immutable final class UsersUnblockError401 extends UsersUnblockError {const UsersUnblockError401(this.data);

factory UsersUnblockError401.parse(ApiResponse response) { return UsersUnblockError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUnblockError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersUnblockError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersUnblockError403 extends UsersUnblockError {const UsersUnblockError403(this.data);

factory UsersUnblockError403.parse(ApiResponse response) { return UsersUnblockError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUnblockError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersUnblockError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersUnblockError404 extends UsersUnblockError {const UsersUnblockError404(this.data);

factory UsersUnblockError404.parse(ApiResponse response) { return UsersUnblockError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUnblockError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersUnblockError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersUnblockError$Unknown extends UsersUnblockError {const UsersUnblockError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersUnblockError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersUnblockError.unknown($statusCode)'; } 
 }
