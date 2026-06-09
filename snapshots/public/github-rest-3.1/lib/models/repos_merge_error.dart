// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/merges`.
sealed class ReposMergeError {const ReposMergeError();

/// Parse the variant matching the response status code.
factory ReposMergeError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ReposMergeError403.parse(response),
  404 => ReposMergeError404.parse(response),
  409 => ReposMergeError409.parse(response),
  422 => ReposMergeError422.parse(response),
  _ => ReposMergeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ReposMergeError403 extends ReposMergeError {const ReposMergeError403(this.data);

factory ReposMergeError403.parse(ApiResponse response) { return ReposMergeError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposMergeError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposMergeError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposMergeError404 extends ReposMergeError {const ReposMergeError404();

factory ReposMergeError404.parse(ApiResponse _) { return const ReposMergeError404(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposMergeError404; } 
@override int get hashCode { return (ReposMergeError404).hashCode; } 
@override String toString() { return 'ReposMergeError404()'; } 
 }
/// The `409` response.
@immutable final class ReposMergeError409 extends ReposMergeError {const ReposMergeError409();

factory ReposMergeError409.parse(ApiResponse _) { return const ReposMergeError409(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposMergeError409; } 
@override int get hashCode { return (ReposMergeError409).hashCode; } 
@override String toString() { return 'ReposMergeError409()'; } 
 }
/// The `422` response.
@immutable final class ReposMergeError422 extends ReposMergeError {const ReposMergeError422(this.data);

factory ReposMergeError422.parse(ApiResponse response) { return ReposMergeError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposMergeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposMergeError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposMergeError$Unknown extends ReposMergeError {const ReposMergeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposMergeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposMergeError.unknown($statusCode)'; } 
 }
