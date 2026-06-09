// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/git/tags`.
sealed class GitCreateTagError {const GitCreateTagError();

/// Parse the variant matching the response status code.
factory GitCreateTagError.parse(ApiResponse response) { return switch (response.statusCode) {
  409 => GitCreateTagError409.parse(response),
  422 => GitCreateTagError422.parse(response),
  _ => GitCreateTagError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `409` response.
@immutable final class GitCreateTagError409 extends GitCreateTagError {const GitCreateTagError409(this.data);

factory GitCreateTagError409.parse(ApiResponse response) { return GitCreateTagError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateTagError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateTagError409($data)'; } 
 }
/// The `422` response.
@immutable final class GitCreateTagError422 extends GitCreateTagError {const GitCreateTagError422(this.data);

factory GitCreateTagError422.parse(ApiResponse response) { return GitCreateTagError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateTagError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateTagError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GitCreateTagError$Unknown extends GitCreateTagError {const GitCreateTagError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateTagError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GitCreateTagError.unknown($statusCode)'; } 
 }
