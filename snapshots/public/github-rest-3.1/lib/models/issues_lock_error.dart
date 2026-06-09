// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/issues/{issue_number}/lock`.
sealed class IssuesLockError {const IssuesLockError();

/// Parse the variant matching the response status code.
factory IssuesLockError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => IssuesLockError403.parse(response),
  404 => IssuesLockError404.parse(response),
  410 => IssuesLockError410.parse(response),
  422 => IssuesLockError422.parse(response),
  _ => IssuesLockError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class IssuesLockError403 extends IssuesLockError {const IssuesLockError403(this.data);

factory IssuesLockError403.parse(ApiResponse response) { return IssuesLockError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesLockError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesLockError403($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesLockError404 extends IssuesLockError {const IssuesLockError404(this.data);

factory IssuesLockError404.parse(ApiResponse response) { return IssuesLockError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesLockError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesLockError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesLockError410 extends IssuesLockError {const IssuesLockError410(this.data);

factory IssuesLockError410.parse(ApiResponse response) { return IssuesLockError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesLockError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesLockError410($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesLockError422 extends IssuesLockError {const IssuesLockError422(this.data);

factory IssuesLockError422.parse(ApiResponse response) { return IssuesLockError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesLockError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesLockError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesLockError$Unknown extends IssuesLockError {const IssuesLockError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesLockError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesLockError.unknown($statusCode)'; } 
 }
