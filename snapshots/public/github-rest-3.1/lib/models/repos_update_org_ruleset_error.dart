// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /orgs/{org}/rulesets/{ruleset_id}`.
sealed class ReposUpdateOrgRulesetError {const ReposUpdateOrgRulesetError();

/// Parse the variant matching the response status code.
factory ReposUpdateOrgRulesetError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposUpdateOrgRulesetError404.parse(response),
  422 => ReposUpdateOrgRulesetError422.parse(response),
  500 => ReposUpdateOrgRulesetError500.parse(response),
  _ => ReposUpdateOrgRulesetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposUpdateOrgRulesetError404 extends ReposUpdateOrgRulesetError {const ReposUpdateOrgRulesetError404(this.data);

factory ReposUpdateOrgRulesetError404.parse(ApiResponse response) { return ReposUpdateOrgRulesetError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateOrgRulesetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateOrgRulesetError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposUpdateOrgRulesetError422 extends ReposUpdateOrgRulesetError {const ReposUpdateOrgRulesetError422(this.data);

factory ReposUpdateOrgRulesetError422.parse(ApiResponse response) { return ReposUpdateOrgRulesetError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateOrgRulesetError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateOrgRulesetError422($data)'; } 
 }
/// The `500` response.
@immutable final class ReposUpdateOrgRulesetError500 extends ReposUpdateOrgRulesetError {const ReposUpdateOrgRulesetError500(this.data);

factory ReposUpdateOrgRulesetError500.parse(ApiResponse response) { return ReposUpdateOrgRulesetError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateOrgRulesetError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateOrgRulesetError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposUpdateOrgRulesetError$Unknown extends ReposUpdateOrgRulesetError {const ReposUpdateOrgRulesetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateOrgRulesetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposUpdateOrgRulesetError.unknown($statusCode)'; } 
 }
