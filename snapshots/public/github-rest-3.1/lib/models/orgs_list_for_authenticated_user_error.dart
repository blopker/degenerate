// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/orgs`.
sealed class OrgsListForAuthenticatedUserError {const OrgsListForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory OrgsListForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => OrgsListForAuthenticatedUserError304.parse(response),
  401 => OrgsListForAuthenticatedUserError401.parse(response),
  403 => OrgsListForAuthenticatedUserError403.parse(response),
  _ => OrgsListForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class OrgsListForAuthenticatedUserError304 extends OrgsListForAuthenticatedUserError {const OrgsListForAuthenticatedUserError304();

factory OrgsListForAuthenticatedUserError304.parse(ApiResponse _) { return const OrgsListForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is OrgsListForAuthenticatedUserError304; } 
@override int get hashCode { return (OrgsListForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'OrgsListForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class OrgsListForAuthenticatedUserError401 extends OrgsListForAuthenticatedUserError {const OrgsListForAuthenticatedUserError401(this.data);

factory OrgsListForAuthenticatedUserError401.parse(ApiResponse response) { return OrgsListForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class OrgsListForAuthenticatedUserError403 extends OrgsListForAuthenticatedUserError {const OrgsListForAuthenticatedUserError403(this.data);

factory OrgsListForAuthenticatedUserError403.parse(ApiResponse response) { return OrgsListForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsListForAuthenticatedUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsListForAuthenticatedUserError$Unknown extends OrgsListForAuthenticatedUserError {const OrgsListForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsListForAuthenticatedUserError.unknown($statusCode)'; } 
 }
