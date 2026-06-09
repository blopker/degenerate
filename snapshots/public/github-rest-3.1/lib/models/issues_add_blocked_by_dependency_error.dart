// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/issues/{issue_number}/dependencies/blocked_by`.
sealed class IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError();

/// Parse the variant matching the response status code.
factory IssuesAddBlockedByDependencyError.parse(ApiResponse response) { return switch (response.statusCode) {
  301 => IssuesAddBlockedByDependencyError301.parse(response),
  403 => IssuesAddBlockedByDependencyError403.parse(response),
  404 => IssuesAddBlockedByDependencyError404.parse(response),
  410 => IssuesAddBlockedByDependencyError410.parse(response),
  422 => IssuesAddBlockedByDependencyError422.parse(response),
  _ => IssuesAddBlockedByDependencyError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `301` response.
@immutable final class IssuesAddBlockedByDependencyError301 extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError301(this.data);

factory IssuesAddBlockedByDependencyError301.parse(ApiResponse response) { return IssuesAddBlockedByDependencyError301(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddBlockedByDependencyError301 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddBlockedByDependencyError301($data)'; } 
 }
/// The `403` response.
@immutable final class IssuesAddBlockedByDependencyError403 extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError403(this.data);

factory IssuesAddBlockedByDependencyError403.parse(ApiResponse response) { return IssuesAddBlockedByDependencyError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddBlockedByDependencyError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddBlockedByDependencyError403($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesAddBlockedByDependencyError404 extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError404(this.data);

factory IssuesAddBlockedByDependencyError404.parse(ApiResponse response) { return IssuesAddBlockedByDependencyError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddBlockedByDependencyError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddBlockedByDependencyError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesAddBlockedByDependencyError410 extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError410(this.data);

factory IssuesAddBlockedByDependencyError410.parse(ApiResponse response) { return IssuesAddBlockedByDependencyError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddBlockedByDependencyError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddBlockedByDependencyError410($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesAddBlockedByDependencyError422 extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError422(this.data);

factory IssuesAddBlockedByDependencyError422.parse(ApiResponse response) { return IssuesAddBlockedByDependencyError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddBlockedByDependencyError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddBlockedByDependencyError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesAddBlockedByDependencyError$Unknown extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddBlockedByDependencyError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesAddBlockedByDependencyError.unknown($statusCode)'; } 
 }
