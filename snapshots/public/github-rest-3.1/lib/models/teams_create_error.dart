// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/teams`.
sealed class TeamsCreateError {const TeamsCreateError();

/// Parse the variant matching the response status code.
factory TeamsCreateError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => TeamsCreateError403.parse(response),
  422 => TeamsCreateError422.parse(response),
  _ => TeamsCreateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class TeamsCreateError403 extends TeamsCreateError {const TeamsCreateError403(this.data);

factory TeamsCreateError403.parse(ApiResponse response) { return TeamsCreateError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsCreateError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TeamsCreateError403($data)'; } 
 }
/// The `422` response.
@immutable final class TeamsCreateError422 extends TeamsCreateError {const TeamsCreateError422(this.data);

factory TeamsCreateError422.parse(ApiResponse response) { return TeamsCreateError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsCreateError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TeamsCreateError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class TeamsCreateError$Unknown extends TeamsCreateError {const TeamsCreateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsCreateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'TeamsCreateError.unknown($statusCode)'; } 
 }
