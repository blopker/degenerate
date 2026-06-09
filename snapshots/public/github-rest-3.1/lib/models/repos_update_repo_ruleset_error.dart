// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/rulesets/{ruleset_id}`.
sealed class ReposUpdateRepoRulesetError {const ReposUpdateRepoRulesetError();

/// Parse the variant matching the response status code.
factory ReposUpdateRepoRulesetError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposUpdateRepoRulesetError404.parse(response),
  422 => ReposUpdateRepoRulesetError422.parse(response),
  500 => ReposUpdateRepoRulesetError500.parse(response),
  _ => ReposUpdateRepoRulesetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposUpdateRepoRulesetError404 extends ReposUpdateRepoRulesetError {const ReposUpdateRepoRulesetError404(this.data);

factory ReposUpdateRepoRulesetError404.parse(ApiResponse response) { return ReposUpdateRepoRulesetError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateRepoRulesetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateRepoRulesetError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposUpdateRepoRulesetError422 extends ReposUpdateRepoRulesetError {const ReposUpdateRepoRulesetError422(this.data);

factory ReposUpdateRepoRulesetError422.parse(ApiResponse response) { return ReposUpdateRepoRulesetError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateRepoRulesetError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateRepoRulesetError422($data)'; } 
 }
/// The `500` response.
@immutable final class ReposUpdateRepoRulesetError500 extends ReposUpdateRepoRulesetError {const ReposUpdateRepoRulesetError500(this.data);

factory ReposUpdateRepoRulesetError500.parse(ApiResponse response) { return ReposUpdateRepoRulesetError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateRepoRulesetError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateRepoRulesetError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposUpdateRepoRulesetError$Unknown extends ReposUpdateRepoRulesetError {const ReposUpdateRepoRulesetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateRepoRulesetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposUpdateRepoRulesetError.unknown($statusCode)'; } 
 }
