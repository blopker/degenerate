// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'git_create_blob_response422.dart';import 'repository_rule_violation_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/git/blobs`.
sealed class GitCreateBlobError {const GitCreateBlobError();

/// Parse the variant matching the response status code.
factory GitCreateBlobError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => GitCreateBlobError403.parse(response),
  404 => GitCreateBlobError404.parse(response),
  409 => GitCreateBlobError409.parse(response),
  422 => GitCreateBlobError422.parse(response),
  _ => GitCreateBlobError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class GitCreateBlobError403 extends GitCreateBlobError {const GitCreateBlobError403(this.data);

factory GitCreateBlobError403.parse(ApiResponse response) { return GitCreateBlobError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateBlobError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateBlobError403($data)'; } 
 }
/// The `404` response.
@immutable final class GitCreateBlobError404 extends GitCreateBlobError {const GitCreateBlobError404(this.data);

factory GitCreateBlobError404.parse(ApiResponse response) { return GitCreateBlobError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateBlobError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateBlobError404($data)'; } 
 }
/// The `409` response.
@immutable final class GitCreateBlobError409 extends GitCreateBlobError {const GitCreateBlobError409(this.data);

factory GitCreateBlobError409.parse(ApiResponse response) { return GitCreateBlobError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateBlobError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateBlobError409($data)'; } 
 }
/// The `422` response.
@immutable final class GitCreateBlobError422 extends GitCreateBlobError {const GitCreateBlobError422(this.data);

factory GitCreateBlobError422.parse(ApiResponse response) { return GitCreateBlobError422(OneOf2.parse(jsonDecode(response.body), fromA: (v) => ValidationError.fromJson(v as Map<String, dynamic>), fromB: (v) => RepositoryRuleViolationError.fromJson(v as Map<String, dynamic>),)); }

final GitCreateBlobResponse422 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateBlobError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateBlobError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GitCreateBlobError$Unknown extends GitCreateBlobError {const GitCreateBlobError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateBlobError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GitCreateBlobError.unknown($statusCode)'; } 
 }
