// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/issues/{issue_number}/labels`.
sealed class IssuesSetLabelsError {const IssuesSetLabelsError();

/// Parse the variant matching the response status code.
factory IssuesSetLabelsError.parse(ApiResponse response) { return switch (response.statusCode) {
  301 => IssuesSetLabelsError301.parse(response),
  404 => IssuesSetLabelsError404.parse(response),
  410 => IssuesSetLabelsError410.parse(response),
  422 => IssuesSetLabelsError422.parse(response),
  _ => IssuesSetLabelsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `301` response.
@immutable final class IssuesSetLabelsError301 extends IssuesSetLabelsError {const IssuesSetLabelsError301(this.data);

factory IssuesSetLabelsError301.parse(ApiResponse response) { return IssuesSetLabelsError301(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesSetLabelsError301 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesSetLabelsError301($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesSetLabelsError404 extends IssuesSetLabelsError {const IssuesSetLabelsError404(this.data);

factory IssuesSetLabelsError404.parse(ApiResponse response) { return IssuesSetLabelsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesSetLabelsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesSetLabelsError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesSetLabelsError410 extends IssuesSetLabelsError {const IssuesSetLabelsError410(this.data);

factory IssuesSetLabelsError410.parse(ApiResponse response) { return IssuesSetLabelsError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesSetLabelsError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesSetLabelsError410($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesSetLabelsError422 extends IssuesSetLabelsError {const IssuesSetLabelsError422(this.data);

factory IssuesSetLabelsError422.parse(ApiResponse response) { return IssuesSetLabelsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesSetLabelsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesSetLabelsError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesSetLabelsError$Unknown extends IssuesSetLabelsError {const IssuesSetLabelsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesSetLabelsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesSetLabelsError.unknown($statusCode)'; } 
 }
