// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `POST /orgs/{org}/issue-types`.
sealed class OrgsCreateIssueTypeError {const OrgsCreateIssueTypeError();

/// Parse the variant matching the response status code.
factory OrgsCreateIssueTypeError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => OrgsCreateIssueTypeError404.parse(response),
  422 => OrgsCreateIssueTypeError422.parse(response),
  _ => OrgsCreateIssueTypeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class OrgsCreateIssueTypeError404 extends OrgsCreateIssueTypeError {const OrgsCreateIssueTypeError404(this.data);

factory OrgsCreateIssueTypeError404.parse(ApiResponse response) { return OrgsCreateIssueTypeError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateIssueTypeError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCreateIssueTypeError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsCreateIssueTypeError422 extends OrgsCreateIssueTypeError {const OrgsCreateIssueTypeError422(this.data);

factory OrgsCreateIssueTypeError422.parse(ApiResponse response) { return OrgsCreateIssueTypeError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateIssueTypeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsCreateIssueTypeError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsCreateIssueTypeError$Unknown extends OrgsCreateIssueTypeError {const OrgsCreateIssueTypeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsCreateIssueTypeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsCreateIssueTypeError.unknown($statusCode)'; } 
 }
