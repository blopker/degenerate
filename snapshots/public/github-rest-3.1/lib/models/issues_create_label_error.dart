// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/labels`.
sealed class IssuesCreateLabelError {const IssuesCreateLabelError();

/// Parse the variant matching the response status code.
factory IssuesCreateLabelError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => IssuesCreateLabelError404.parse(response),
  422 => IssuesCreateLabelError422.parse(response),
  _ => IssuesCreateLabelError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class IssuesCreateLabelError404 extends IssuesCreateLabelError {const IssuesCreateLabelError404(this.data);

factory IssuesCreateLabelError404.parse(ApiResponse response) { return IssuesCreateLabelError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateLabelError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateLabelError404($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesCreateLabelError422 extends IssuesCreateLabelError {const IssuesCreateLabelError422(this.data);

factory IssuesCreateLabelError422.parse(ApiResponse response) { return IssuesCreateLabelError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateLabelError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateLabelError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesCreateLabelError$Unknown extends IssuesCreateLabelError {const IssuesCreateLabelError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateLabelError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesCreateLabelError.unknown($statusCode)'; } 
 }
