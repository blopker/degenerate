// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/git/trees/{tree_sha}`.
sealed class GitGetTreeError {const GitGetTreeError();

/// Parse the variant matching the response status code.
factory GitGetTreeError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => GitGetTreeError404.parse(response),
  409 => GitGetTreeError409.parse(response),
  422 => GitGetTreeError422.parse(response),
  _ => GitGetTreeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class GitGetTreeError404 extends GitGetTreeError {const GitGetTreeError404(this.data);

factory GitGetTreeError404.parse(ApiResponse response) { return GitGetTreeError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitGetTreeError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitGetTreeError404($data)'; } 
 }
/// The `409` response.
@immutable final class GitGetTreeError409 extends GitGetTreeError {const GitGetTreeError409(this.data);

factory GitGetTreeError409.parse(ApiResponse response) { return GitGetTreeError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitGetTreeError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitGetTreeError409($data)'; } 
 }
/// The `422` response.
@immutable final class GitGetTreeError422 extends GitGetTreeError {const GitGetTreeError422(this.data);

factory GitGetTreeError422.parse(ApiResponse response) { return GitGetTreeError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitGetTreeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitGetTreeError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GitGetTreeError$Unknown extends GitGetTreeError {const GitGetTreeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitGetTreeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GitGetTreeError.unknown($statusCode)'; } 
 }
