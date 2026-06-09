// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/pulls`.
sealed class PullsCreateError {const PullsCreateError();

/// Parse the variant matching the response status code.
factory PullsCreateError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => PullsCreateError403.parse(response),
  422 => PullsCreateError422.parse(response),
  _ => PullsCreateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class PullsCreateError403 extends PullsCreateError {const PullsCreateError403(this.data);

factory PullsCreateError403.parse(ApiResponse response) { return PullsCreateError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsCreateError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsCreateError403($data)'; } 
 }
/// The `422` response.
@immutable final class PullsCreateError422 extends PullsCreateError {const PullsCreateError422(this.data);

factory PullsCreateError422.parse(ApiResponse response) { return PullsCreateError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsCreateError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsCreateError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsCreateError$Unknown extends PullsCreateError {const PullsCreateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsCreateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsCreateError.unknown($statusCode)'; } 
 }
