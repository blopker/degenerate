// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/following/{username}`.
sealed class UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError();

/// Parse the variant matching the response status code.
factory UsersCheckPersonIsFollowedByAuthenticatedError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersCheckPersonIsFollowedByAuthenticatedError304.parse(response),
  401 => UsersCheckPersonIsFollowedByAuthenticatedError401.parse(response),
  403 => UsersCheckPersonIsFollowedByAuthenticatedError403.parse(response),
  404 => UsersCheckPersonIsFollowedByAuthenticatedError404.parse(response),
  _ => UsersCheckPersonIsFollowedByAuthenticatedError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersCheckPersonIsFollowedByAuthenticatedError304 extends UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError304();

factory UsersCheckPersonIsFollowedByAuthenticatedError304.parse(ApiResponse _) { return const UsersCheckPersonIsFollowedByAuthenticatedError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersCheckPersonIsFollowedByAuthenticatedError304; } 
@override int get hashCode { return (UsersCheckPersonIsFollowedByAuthenticatedError304).hashCode; } 
@override String toString() { return 'UsersCheckPersonIsFollowedByAuthenticatedError304()'; } 
 }
/// The `401` response.
@immutable final class UsersCheckPersonIsFollowedByAuthenticatedError401 extends UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError401(this.data);

factory UsersCheckPersonIsFollowedByAuthenticatedError401.parse(ApiResponse response) { return UsersCheckPersonIsFollowedByAuthenticatedError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCheckPersonIsFollowedByAuthenticatedError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCheckPersonIsFollowedByAuthenticatedError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersCheckPersonIsFollowedByAuthenticatedError403 extends UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError403(this.data);

factory UsersCheckPersonIsFollowedByAuthenticatedError403.parse(ApiResponse response) { return UsersCheckPersonIsFollowedByAuthenticatedError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCheckPersonIsFollowedByAuthenticatedError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCheckPersonIsFollowedByAuthenticatedError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersCheckPersonIsFollowedByAuthenticatedError404 extends UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError404(this.data);

factory UsersCheckPersonIsFollowedByAuthenticatedError404.parse(ApiResponse response) { return UsersCheckPersonIsFollowedByAuthenticatedError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCheckPersonIsFollowedByAuthenticatedError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersCheckPersonIsFollowedByAuthenticatedError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersCheckPersonIsFollowedByAuthenticatedError$Unknown extends UsersCheckPersonIsFollowedByAuthenticatedError {const UsersCheckPersonIsFollowedByAuthenticatedError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersCheckPersonIsFollowedByAuthenticatedError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersCheckPersonIsFollowedByAuthenticatedError.unknown($statusCode)'; } 
 }
