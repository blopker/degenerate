// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/git/commits`.
sealed class GitCreateCommitError {const GitCreateCommitError();

/// Parse the variant matching the response status code.
factory GitCreateCommitError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => GitCreateCommitError404.parse(response),
  409 => GitCreateCommitError409.parse(response),
  422 => GitCreateCommitError422.parse(response),
  _ => GitCreateCommitError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class GitCreateCommitError404 extends GitCreateCommitError {const GitCreateCommitError404(this.data);

factory GitCreateCommitError404.parse(ApiResponse response) { return GitCreateCommitError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateCommitError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateCommitError404($data)'; } 
 }
/// The `409` response.
@immutable final class GitCreateCommitError409 extends GitCreateCommitError {const GitCreateCommitError409(this.data);

factory GitCreateCommitError409.parse(ApiResponse response) { return GitCreateCommitError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateCommitError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateCommitError409($data)'; } 
 }
/// The `422` response.
@immutable final class GitCreateCommitError422 extends GitCreateCommitError {const GitCreateCommitError422(this.data);

factory GitCreateCommitError422.parse(ApiResponse response) { return GitCreateCommitError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateCommitError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateCommitError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GitCreateCommitError$Unknown extends GitCreateCommitError {const GitCreateCommitError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateCommitError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GitCreateCommitError.unknown($statusCode)'; } 
 }
