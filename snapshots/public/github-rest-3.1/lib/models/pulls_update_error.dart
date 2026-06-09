// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/pulls/{pull_number}`.
sealed class PullsUpdateError {const PullsUpdateError();

/// Parse the variant matching the response status code.
factory PullsUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => PullsUpdateError403.parse(response),
  422 => PullsUpdateError422.parse(response),
  _ => PullsUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class PullsUpdateError403 extends PullsUpdateError {const PullsUpdateError403(this.data);

factory PullsUpdateError403.parse(ApiResponse response) { return PullsUpdateError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsUpdateError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsUpdateError403($data)'; } 
 }
/// The `422` response.
@immutable final class PullsUpdateError422 extends PullsUpdateError {const PullsUpdateError422(this.data);

factory PullsUpdateError422.parse(ApiResponse response) { return PullsUpdateError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsUpdateError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsUpdateError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsUpdateError$Unknown extends PullsUpdateError {const PullsUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsUpdateError.unknown($statusCode)'; } 
 }
