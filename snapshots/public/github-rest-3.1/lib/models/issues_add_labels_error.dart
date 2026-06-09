// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/issues/{issue_number}/labels`.
sealed class IssuesAddLabelsError {const IssuesAddLabelsError();

/// Parse the variant matching the response status code.
factory IssuesAddLabelsError.parse(ApiResponse response) { return switch (response.statusCode) {
  301 => IssuesAddLabelsError301.parse(response),
  404 => IssuesAddLabelsError404.parse(response),
  410 => IssuesAddLabelsError410.parse(response),
  422 => IssuesAddLabelsError422.parse(response),
  _ => IssuesAddLabelsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `301` response.
@immutable final class IssuesAddLabelsError301 extends IssuesAddLabelsError {const IssuesAddLabelsError301(this.data);

factory IssuesAddLabelsError301.parse(ApiResponse response) { return IssuesAddLabelsError301(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddLabelsError301 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddLabelsError301($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesAddLabelsError404 extends IssuesAddLabelsError {const IssuesAddLabelsError404(this.data);

factory IssuesAddLabelsError404.parse(ApiResponse response) { return IssuesAddLabelsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddLabelsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddLabelsError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesAddLabelsError410 extends IssuesAddLabelsError {const IssuesAddLabelsError410(this.data);

factory IssuesAddLabelsError410.parse(ApiResponse response) { return IssuesAddLabelsError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddLabelsError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddLabelsError410($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesAddLabelsError422 extends IssuesAddLabelsError {const IssuesAddLabelsError422(this.data);

factory IssuesAddLabelsError422.parse(ApiResponse response) { return IssuesAddLabelsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddLabelsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesAddLabelsError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesAddLabelsError$Unknown extends IssuesAddLabelsError {const IssuesAddLabelsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesAddLabelsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesAddLabelsError.unknown($statusCode)'; } 
 }
