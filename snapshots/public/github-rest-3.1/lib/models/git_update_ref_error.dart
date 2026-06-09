// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/git/refs/{ref}`.
sealed class GitUpdateRefError {const GitUpdateRefError();

/// Parse the variant matching the response status code.
factory GitUpdateRefError.parse(ApiResponse response) { return switch (response.statusCode) {
  409 => GitUpdateRefError409.parse(response),
  422 => GitUpdateRefError422.parse(response),
  _ => GitUpdateRefError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `409` response.
@immutable final class GitUpdateRefError409 extends GitUpdateRefError {const GitUpdateRefError409(this.data);

factory GitUpdateRefError409.parse(ApiResponse response) { return GitUpdateRefError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitUpdateRefError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitUpdateRefError409($data)'; } 
 }
/// The `422` response.
@immutable final class GitUpdateRefError422 extends GitUpdateRefError {const GitUpdateRefError422(this.data);

factory GitUpdateRefError422.parse(ApiResponse response) { return GitUpdateRefError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitUpdateRefError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitUpdateRefError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GitUpdateRefError$Unknown extends GitUpdateRefError {const GitUpdateRefError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitUpdateRefError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GitUpdateRefError.unknown($statusCode)'; } 
 }
