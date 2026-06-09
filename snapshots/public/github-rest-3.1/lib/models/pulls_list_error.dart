// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/pulls`.
sealed class PullsListError {const PullsListError();

/// Parse the variant matching the response status code.
factory PullsListError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => PullsListError304.parse(response),
  422 => PullsListError422.parse(response),
  _ => PullsListError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class PullsListError304 extends PullsListError {const PullsListError304();

factory PullsListError304.parse(ApiResponse _) { return const PullsListError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is PullsListError304; } 
@override int get hashCode { return (PullsListError304).hashCode; } 
@override String toString() { return 'PullsListError304()'; } 
 }
/// The `422` response.
@immutable final class PullsListError422 extends PullsListError {const PullsListError422(this.data);

factory PullsListError422.parse(ApiResponse response) { return PullsListError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsListError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsListError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsListError$Unknown extends PullsListError {const PullsListError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsListError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsListError.unknown($statusCode)'; } 
 }
