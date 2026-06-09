// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/issues`.
sealed class IssuesListForRepoError {const IssuesListForRepoError();

/// Parse the variant matching the response status code.
factory IssuesListForRepoError.parse(ApiResponse response) { return switch (response.statusCode) {
  301 => IssuesListForRepoError301.parse(response),
  404 => IssuesListForRepoError404.parse(response),
  422 => IssuesListForRepoError422.parse(response),
  _ => IssuesListForRepoError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `301` response.
@immutable final class IssuesListForRepoError301 extends IssuesListForRepoError {const IssuesListForRepoError301(this.data);

factory IssuesListForRepoError301.parse(ApiResponse response) { return IssuesListForRepoError301(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListForRepoError301 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesListForRepoError301($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesListForRepoError404 extends IssuesListForRepoError {const IssuesListForRepoError404(this.data);

factory IssuesListForRepoError404.parse(ApiResponse response) { return IssuesListForRepoError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListForRepoError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesListForRepoError404($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesListForRepoError422 extends IssuesListForRepoError {const IssuesListForRepoError422(this.data);

factory IssuesListForRepoError422.parse(ApiResponse response) { return IssuesListForRepoError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListForRepoError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesListForRepoError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesListForRepoError$Unknown extends IssuesListForRepoError {const IssuesListForRepoError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListForRepoError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesListForRepoError.unknown($statusCode)'; } 
 }
