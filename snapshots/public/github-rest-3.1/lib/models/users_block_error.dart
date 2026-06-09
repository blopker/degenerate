// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /user/blocks/{username}`.
sealed class UsersBlockError {const UsersBlockError();

/// Parse the variant matching the response status code.
factory UsersBlockError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => UsersBlockError304.parse(response),
  401 => UsersBlockError401.parse(response),
  403 => UsersBlockError403.parse(response),
  404 => UsersBlockError404.parse(response),
  422 => UsersBlockError422.parse(response),
  _ => UsersBlockError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class UsersBlockError304 extends UsersBlockError {const UsersBlockError304();

factory UsersBlockError304.parse(ApiResponse _) { return const UsersBlockError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is UsersBlockError304; } 
@override int get hashCode { return (UsersBlockError304).hashCode; } 
@override String toString() { return 'UsersBlockError304()'; } 
 }
/// The `401` response.
@immutable final class UsersBlockError401 extends UsersBlockError {const UsersBlockError401(this.data);

factory UsersBlockError401.parse(ApiResponse response) { return UsersBlockError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersBlockError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersBlockError401($data)'; } 
 }
/// The `403` response.
@immutable final class UsersBlockError403 extends UsersBlockError {const UsersBlockError403(this.data);

factory UsersBlockError403.parse(ApiResponse response) { return UsersBlockError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersBlockError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersBlockError403($data)'; } 
 }
/// The `404` response.
@immutable final class UsersBlockError404 extends UsersBlockError {const UsersBlockError404(this.data);

factory UsersBlockError404.parse(ApiResponse response) { return UsersBlockError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersBlockError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersBlockError404($data)'; } 
 }
/// The `422` response.
@immutable final class UsersBlockError422 extends UsersBlockError {const UsersBlockError422(this.data);

factory UsersBlockError422.parse(ApiResponse response) { return UsersBlockError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersBlockError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UsersBlockError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UsersBlockError$Unknown extends UsersBlockError {const UsersBlockError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersBlockError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UsersBlockError.unknown($statusCode)'; } 
 }
