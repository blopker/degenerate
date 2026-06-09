// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/teams`.
sealed class TeamsListForAuthenticatedUserError {const TeamsListForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory TeamsListForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => TeamsListForAuthenticatedUserError304.parse(response),
  403 => TeamsListForAuthenticatedUserError403.parse(response),
  404 => TeamsListForAuthenticatedUserError404.parse(response),
  _ => TeamsListForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class TeamsListForAuthenticatedUserError304 extends TeamsListForAuthenticatedUserError {const TeamsListForAuthenticatedUserError304();

factory TeamsListForAuthenticatedUserError304.parse(ApiResponse _) { return const TeamsListForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is TeamsListForAuthenticatedUserError304; } 
@override int get hashCode { return (TeamsListForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'TeamsListForAuthenticatedUserError304()'; } 
 }
/// The `403` response.
@immutable final class TeamsListForAuthenticatedUserError403 extends TeamsListForAuthenticatedUserError {const TeamsListForAuthenticatedUserError403(this.data);

factory TeamsListForAuthenticatedUserError403.parse(ApiResponse response) { return TeamsListForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsListForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TeamsListForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class TeamsListForAuthenticatedUserError404 extends TeamsListForAuthenticatedUserError {const TeamsListForAuthenticatedUserError404(this.data);

factory TeamsListForAuthenticatedUserError404.parse(ApiResponse response) { return TeamsListForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsListForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TeamsListForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class TeamsListForAuthenticatedUserError$Unknown extends TeamsListForAuthenticatedUserError {const TeamsListForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsListForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'TeamsListForAuthenticatedUserError.unknown($statusCode)'; } 
 }
