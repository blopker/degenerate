// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `PUT /orgs/{org}/issue-types/{issue_type_id}`.
sealed class OrgsUpdateIssueTypeError {const OrgsUpdateIssueTypeError();

/// Parse the variant matching the response status code.
factory OrgsUpdateIssueTypeError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => OrgsUpdateIssueTypeError404.parse(response),
  422 => OrgsUpdateIssueTypeError422.parse(response),
  _ => OrgsUpdateIssueTypeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class OrgsUpdateIssueTypeError404 extends OrgsUpdateIssueTypeError {const OrgsUpdateIssueTypeError404(this.data);

factory OrgsUpdateIssueTypeError404.parse(ApiResponse response) { return OrgsUpdateIssueTypeError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateIssueTypeError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdateIssueTypeError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsUpdateIssueTypeError422 extends OrgsUpdateIssueTypeError {const OrgsUpdateIssueTypeError422(this.data);

factory OrgsUpdateIssueTypeError422.parse(ApiResponse response) { return OrgsUpdateIssueTypeError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateIssueTypeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsUpdateIssueTypeError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsUpdateIssueTypeError$Unknown extends OrgsUpdateIssueTypeError {const OrgsUpdateIssueTypeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsUpdateIssueTypeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsUpdateIssueTypeError.unknown($statusCode)'; } 
 }
