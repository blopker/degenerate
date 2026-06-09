// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'repos_create_or_update_file_contents_response409.dart';import 'repository_rule_violation_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/contents/{path}`.
sealed class ReposCreateOrUpdateFileContentsError {const ReposCreateOrUpdateFileContentsError();

/// Parse the variant matching the response status code.
factory ReposCreateOrUpdateFileContentsError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposCreateOrUpdateFileContentsError404.parse(response),
  409 => ReposCreateOrUpdateFileContentsError409.parse(response),
  422 => ReposCreateOrUpdateFileContentsError422.parse(response),
  _ => ReposCreateOrUpdateFileContentsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposCreateOrUpdateFileContentsError404 extends ReposCreateOrUpdateFileContentsError {const ReposCreateOrUpdateFileContentsError404(this.data);

factory ReposCreateOrUpdateFileContentsError404.parse(ApiResponse response) { return ReposCreateOrUpdateFileContentsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateOrUpdateFileContentsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateOrUpdateFileContentsError404($data)'; } 
 }
/// The `409` response.
@immutable final class ReposCreateOrUpdateFileContentsError409 extends ReposCreateOrUpdateFileContentsError {const ReposCreateOrUpdateFileContentsError409(this.data);

factory ReposCreateOrUpdateFileContentsError409.parse(ApiResponse response) { return ReposCreateOrUpdateFileContentsError409(OneOf2.parse(jsonDecode(response.body), fromA: (v) => BasicError.fromJson(v as Map<String, dynamic>), fromB: (v) => RepositoryRuleViolationError.fromJson(v as Map<String, dynamic>),)); }

final ReposCreateOrUpdateFileContentsResponse409 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateOrUpdateFileContentsError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateOrUpdateFileContentsError409($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreateOrUpdateFileContentsError422 extends ReposCreateOrUpdateFileContentsError {const ReposCreateOrUpdateFileContentsError422(this.data);

factory ReposCreateOrUpdateFileContentsError422.parse(ApiResponse response) { return ReposCreateOrUpdateFileContentsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateOrUpdateFileContentsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateOrUpdateFileContentsError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateOrUpdateFileContentsError$Unknown extends ReposCreateOrUpdateFileContentsError {const ReposCreateOrUpdateFileContentsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateOrUpdateFileContentsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateOrUpdateFileContentsError.unknown($statusCode)'; } 
 }
