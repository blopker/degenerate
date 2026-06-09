// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/git/refs`.
sealed class GitCreateRefError {const GitCreateRefError();

/// Parse the variant matching the response status code.
factory GitCreateRefError.parse(ApiResponse response) { return switch (response.statusCode) {
  409 => GitCreateRefError409.parse(response),
  422 => GitCreateRefError422.parse(response),
  _ => GitCreateRefError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `409` response.
@immutable final class GitCreateRefError409 extends GitCreateRefError {const GitCreateRefError409(this.data);

factory GitCreateRefError409.parse(ApiResponse response) { return GitCreateRefError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateRefError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateRefError409($data)'; } 
 }
/// The `422` response.
@immutable final class GitCreateRefError422 extends GitCreateRefError {const GitCreateRefError422(this.data);

factory GitCreateRefError422.parse(ApiResponse response) { return GitCreateRefError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateRefError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateRefError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GitCreateRefError$Unknown extends GitCreateRefError {const GitCreateRefError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateRefError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GitCreateRefError.unknown($statusCode)'; } 
 }
