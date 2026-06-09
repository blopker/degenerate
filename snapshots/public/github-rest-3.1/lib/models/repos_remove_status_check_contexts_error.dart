// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts`.
sealed class ReposRemoveStatusCheckContextsError {const ReposRemoveStatusCheckContextsError();

/// Parse the variant matching the response status code.
factory ReposRemoveStatusCheckContextsError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposRemoveStatusCheckContextsError404.parse(response),
  422 => ReposRemoveStatusCheckContextsError422.parse(response),
  _ => ReposRemoveStatusCheckContextsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposRemoveStatusCheckContextsError404 extends ReposRemoveStatusCheckContextsError {const ReposRemoveStatusCheckContextsError404(this.data);

factory ReposRemoveStatusCheckContextsError404.parse(ApiResponse response) { return ReposRemoveStatusCheckContextsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposRemoveStatusCheckContextsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposRemoveStatusCheckContextsError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposRemoveStatusCheckContextsError422 extends ReposRemoveStatusCheckContextsError {const ReposRemoveStatusCheckContextsError422(this.data);

factory ReposRemoveStatusCheckContextsError422.parse(ApiResponse response) { return ReposRemoveStatusCheckContextsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposRemoveStatusCheckContextsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposRemoveStatusCheckContextsError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposRemoveStatusCheckContextsError$Unknown extends ReposRemoveStatusCheckContextsError {const ReposRemoveStatusCheckContextsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposRemoveStatusCheckContextsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposRemoveStatusCheckContextsError.unknown($statusCode)'; } 
 }
