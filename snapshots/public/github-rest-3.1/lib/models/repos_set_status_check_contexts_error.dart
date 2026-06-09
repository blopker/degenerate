// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts`.
sealed class ReposSetStatusCheckContextsError {const ReposSetStatusCheckContextsError();

/// Parse the variant matching the response status code.
factory ReposSetStatusCheckContextsError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposSetStatusCheckContextsError404.parse(response),
  422 => ReposSetStatusCheckContextsError422.parse(response),
  _ => ReposSetStatusCheckContextsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposSetStatusCheckContextsError404 extends ReposSetStatusCheckContextsError {const ReposSetStatusCheckContextsError404(this.data);

factory ReposSetStatusCheckContextsError404.parse(ApiResponse response) { return ReposSetStatusCheckContextsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposSetStatusCheckContextsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposSetStatusCheckContextsError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposSetStatusCheckContextsError422 extends ReposSetStatusCheckContextsError {const ReposSetStatusCheckContextsError422(this.data);

factory ReposSetStatusCheckContextsError422.parse(ApiResponse response) { return ReposSetStatusCheckContextsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposSetStatusCheckContextsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposSetStatusCheckContextsError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposSetStatusCheckContextsError$Unknown extends ReposSetStatusCheckContextsError {const ReposSetStatusCheckContextsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposSetStatusCheckContextsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposSetStatusCheckContextsError.unknown($statusCode)'; } 
 }
