// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/blocks/{username}`.
sealed class UsersCheckBlockedError {const UsersCheckBlockedError();

/// Parse the variant matching the response status code.
factory UsersCheckBlockedError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersCheckBlockedError304.parse(response),
  401 => UsersCheckBlockedError401.parse(response),
  403 => UsersCheckBlockedError403.parse(response),
  404 => UsersCheckBlockedError404.parse(response),
  _ => UsersCheckBlockedError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersCheckBlockedError304 extends UsersCheckBlockedError {const UsersCheckBlockedError304();

factory UsersCheckBlockedError304.parse(ApiResponse _) { return const UsersCheckBlockedError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersCheckBlockedError304; } 
@override int get hashCode { return (UsersCheckBlockedError304).hashCode; } 
@override String toString() { return 'UsersCheckBlockedError304()'; } 
 }
/// The `401` response.
@immutable final class UsersCheckBlockedError401 extends UsersCheckBlockedError {const UsersCheckBlockedError401(this.data);

factory UsersCheckBlockedError401.parse(ApiResponse response) { return UsersCheckBlockedError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCheckBlockedError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCheckBlockedError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersCheckBlockedError403 extends UsersCheckBlockedError {const UsersCheckBlockedError403(this.data);

factory UsersCheckBlockedError403.parse(ApiResponse response) { return UsersCheckBlockedError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCheckBlockedError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCheckBlockedError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersCheckBlockedError404 extends UsersCheckBlockedError {const UsersCheckBlockedError404(this.data);

factory UsersCheckBlockedError404.parse(ApiResponse response) { return UsersCheckBlockedError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCheckBlockedError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCheckBlockedError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersCheckBlockedError$Unknown extends UsersCheckBlockedError {const UsersCheckBlockedError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCheckBlockedError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersCheckBlockedError.unknown($statusCode)'; } 
 }
