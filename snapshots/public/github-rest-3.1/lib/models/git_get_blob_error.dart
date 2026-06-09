// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/git/blobs/{file_sha}`.
sealed class GitGetBlobError {const GitGetBlobError();

/// Parse the variant matching the response status code.
factory GitGetBlobError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => GitGetBlobError403.parse(response),
  404 => GitGetBlobError404.parse(response),
  409 => GitGetBlobError409.parse(response),
  422 => GitGetBlobError422.parse(response),
  _ => GitGetBlobError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class GitGetBlobError403 extends GitGetBlobError {const GitGetBlobError403(this.data);

factory GitGetBlobError403.parse(ApiResponse response) { return GitGetBlobError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitGetBlobError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitGetBlobError403($data)'; } 
 }
/// The `404` response.
@immutable final class GitGetBlobError404 extends GitGetBlobError {const GitGetBlobError404(this.data);

factory GitGetBlobError404.parse(ApiResponse response) { return GitGetBlobError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitGetBlobError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitGetBlobError404($data)'; } 
 }
/// The `409` response.
@immutable final class GitGetBlobError409 extends GitGetBlobError {const GitGetBlobError409(this.data);

factory GitGetBlobError409.parse(ApiResponse response) { return GitGetBlobError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitGetBlobError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitGetBlobError409($data)'; } 
 }
/// The `422` response.
@immutable final class GitGetBlobError422 extends GitGetBlobError {const GitGetBlobError422(this.data);

factory GitGetBlobError422.parse(ApiResponse response) { return GitGetBlobError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitGetBlobError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitGetBlobError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GitGetBlobError$Unknown extends GitGetBlobError {const GitGetBlobError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitGetBlobError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GitGetBlobError.unknown($statusCode)'; } 
 }
