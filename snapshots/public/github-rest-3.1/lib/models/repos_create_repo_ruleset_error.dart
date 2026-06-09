// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/rulesets`.
sealed class ReposCreateRepoRulesetError {const ReposCreateRepoRulesetError();

/// Parse the variant matching the response status code.
factory ReposCreateRepoRulesetError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposCreateRepoRulesetError404.parse(response),
  422 => ReposCreateRepoRulesetError422.parse(response),
  500 => ReposCreateRepoRulesetError500.parse(response),
  _ => ReposCreateRepoRulesetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposCreateRepoRulesetError404 extends ReposCreateRepoRulesetError {const ReposCreateRepoRulesetError404(this.data);

factory ReposCreateRepoRulesetError404.parse(ApiResponse response) { return ReposCreateRepoRulesetError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateRepoRulesetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateRepoRulesetError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreateRepoRulesetError422 extends ReposCreateRepoRulesetError {const ReposCreateRepoRulesetError422(this.data);

factory ReposCreateRepoRulesetError422.parse(ApiResponse response) { return ReposCreateRepoRulesetError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateRepoRulesetError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateRepoRulesetError422($data)'; } 
 }
/// The `500` response.
@immutable final class ReposCreateRepoRulesetError500 extends ReposCreateRepoRulesetError {const ReposCreateRepoRulesetError500(this.data);

factory ReposCreateRepoRulesetError500.parse(ApiResponse response) { return ReposCreateRepoRulesetError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateRepoRulesetError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateRepoRulesetError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateRepoRulesetError$Unknown extends ReposCreateRepoRulesetError {const ReposCreateRepoRulesetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateRepoRulesetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateRepoRulesetError.unknown($statusCode)'; } 
 }
