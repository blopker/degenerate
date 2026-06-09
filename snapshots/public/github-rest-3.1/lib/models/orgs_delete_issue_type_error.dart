// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `DELETE /orgs/{org}/issue-types/{issue_type_id}`.
sealed class OrgsDeleteIssueTypeError {const OrgsDeleteIssueTypeError();

/// Parse the variant matching the response status code.
factory OrgsDeleteIssueTypeError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => OrgsDeleteIssueTypeError404.parse(response),
  422 => OrgsDeleteIssueTypeError422.parse(response),
  _ => OrgsDeleteIssueTypeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class OrgsDeleteIssueTypeError404 extends OrgsDeleteIssueTypeError {const OrgsDeleteIssueTypeError404(this.data);

factory OrgsDeleteIssueTypeError404.parse(ApiResponse response) { return OrgsDeleteIssueTypeError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsDeleteIssueTypeError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsDeleteIssueTypeError404($data)'; } 
 }
/// The `422` response.
@immutable final class OrgsDeleteIssueTypeError422 extends OrgsDeleteIssueTypeError {const OrgsDeleteIssueTypeError422(this.data);

factory OrgsDeleteIssueTypeError422.parse(ApiResponse response) { return OrgsDeleteIssueTypeError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsDeleteIssueTypeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'OrgsDeleteIssueTypeError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class OrgsDeleteIssueTypeError$Unknown extends OrgsDeleteIssueTypeError {const OrgsDeleteIssueTypeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsDeleteIssueTypeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'OrgsDeleteIssueTypeError.unknown($statusCode)'; } 
 }
