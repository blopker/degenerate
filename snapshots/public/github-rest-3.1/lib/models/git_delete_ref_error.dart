// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/git/refs/{ref}`.
sealed class GitDeleteRefError {const GitDeleteRefError();

/// Parse the variant matching the response status code.
factory GitDeleteRefError.parse(ApiResponse response) { return switch (response.statusCode) {
  409 => GitDeleteRefError409.parse(response),
  422 => GitDeleteRefError422.parse(response),
  _ => GitDeleteRefError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `409` response.
@immutable final class GitDeleteRefError409 extends GitDeleteRefError {const GitDeleteRefError409(this.data);

factory GitDeleteRefError409.parse(ApiResponse response) { return GitDeleteRefError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitDeleteRefError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitDeleteRefError409($data)'; } 
 }
/// The `422` response.
@immutable final class GitDeleteRefError422 extends GitDeleteRefError {const GitDeleteRefError422();

factory GitDeleteRefError422.parse(ApiResponse _) { return const GitDeleteRefError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GitDeleteRefError422; } 
@override int get hashCode { return (GitDeleteRefError422).hashCode; } 
@override String toString() { return 'GitDeleteRefError422()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GitDeleteRefError$Unknown extends GitDeleteRefError {const GitDeleteRefError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitDeleteRefError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GitDeleteRefError.unknown($statusCode)'; } 
 }
