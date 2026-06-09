// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts`.
sealed class ReposAddStatusCheckContextsError {const ReposAddStatusCheckContextsError();

/// Parse the variant matching the response status code.
factory ReposAddStatusCheckContextsError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ReposAddStatusCheckContextsError403.parse(response),
  404 => ReposAddStatusCheckContextsError404.parse(response),
  422 => ReposAddStatusCheckContextsError422.parse(response),
  _ => ReposAddStatusCheckContextsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ReposAddStatusCheckContextsError403 extends ReposAddStatusCheckContextsError {const ReposAddStatusCheckContextsError403(this.data);

factory ReposAddStatusCheckContextsError403.parse(ApiResponse response) { return ReposAddStatusCheckContextsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposAddStatusCheckContextsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposAddStatusCheckContextsError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposAddStatusCheckContextsError404 extends ReposAddStatusCheckContextsError {const ReposAddStatusCheckContextsError404(this.data);

factory ReposAddStatusCheckContextsError404.parse(ApiResponse response) { return ReposAddStatusCheckContextsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposAddStatusCheckContextsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposAddStatusCheckContextsError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposAddStatusCheckContextsError422 extends ReposAddStatusCheckContextsError {const ReposAddStatusCheckContextsError422(this.data);

factory ReposAddStatusCheckContextsError422.parse(ApiResponse response) { return ReposAddStatusCheckContextsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposAddStatusCheckContextsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposAddStatusCheckContextsError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposAddStatusCheckContextsError$Unknown extends ReposAddStatusCheckContextsError {const ReposAddStatusCheckContextsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposAddStatusCheckContextsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposAddStatusCheckContextsError.unknown($statusCode)'; } 
 }
