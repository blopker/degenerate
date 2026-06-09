// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/git/trees`.
sealed class GitCreateTreeError {const GitCreateTreeError();

/// Parse the variant matching the response status code.
factory GitCreateTreeError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => GitCreateTreeError403.parse(response),
  404 => GitCreateTreeError404.parse(response),
  409 => GitCreateTreeError409.parse(response),
  422 => GitCreateTreeError422.parse(response),
  _ => GitCreateTreeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class GitCreateTreeError403 extends GitCreateTreeError {const GitCreateTreeError403(this.data);

factory GitCreateTreeError403.parse(ApiResponse response) { return GitCreateTreeError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateTreeError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateTreeError403($data)'; } 
 }
/// The `404` response.
@immutable final class GitCreateTreeError404 extends GitCreateTreeError {const GitCreateTreeError404(this.data);

factory GitCreateTreeError404.parse(ApiResponse response) { return GitCreateTreeError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateTreeError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateTreeError404($data)'; } 
 }
/// The `409` response.
@immutable final class GitCreateTreeError409 extends GitCreateTreeError {const GitCreateTreeError409(this.data);

factory GitCreateTreeError409.parse(ApiResponse response) { return GitCreateTreeError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateTreeError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateTreeError409($data)'; } 
 }
/// The `422` response.
@immutable final class GitCreateTreeError422 extends GitCreateTreeError {const GitCreateTreeError422(this.data);

factory GitCreateTreeError422.parse(ApiResponse response) { return GitCreateTreeError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateTreeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GitCreateTreeError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GitCreateTreeError$Unknown extends GitCreateTreeError {const GitCreateTreeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GitCreateTreeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GitCreateTreeError.unknown($statusCode)'; } 
 }
