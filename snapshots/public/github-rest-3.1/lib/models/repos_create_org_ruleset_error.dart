// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/rulesets`.
sealed class ReposCreateOrgRulesetError {const ReposCreateOrgRulesetError();

/// Parse the variant matching the response status code.
factory ReposCreateOrgRulesetError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposCreateOrgRulesetError404.parse(response),
  422 => ReposCreateOrgRulesetError422.parse(response),
  500 => ReposCreateOrgRulesetError500.parse(response),
  _ => ReposCreateOrgRulesetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposCreateOrgRulesetError404 extends ReposCreateOrgRulesetError {const ReposCreateOrgRulesetError404(this.data);

factory ReposCreateOrgRulesetError404.parse(ApiResponse response) { return ReposCreateOrgRulesetError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateOrgRulesetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateOrgRulesetError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreateOrgRulesetError422 extends ReposCreateOrgRulesetError {const ReposCreateOrgRulesetError422(this.data);

factory ReposCreateOrgRulesetError422.parse(ApiResponse response) { return ReposCreateOrgRulesetError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateOrgRulesetError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateOrgRulesetError422($data)'; } 
 }
/// The `500` response.
@immutable final class ReposCreateOrgRulesetError500 extends ReposCreateOrgRulesetError {const ReposCreateOrgRulesetError500(this.data);

factory ReposCreateOrgRulesetError500.parse(ApiResponse response) { return ReposCreateOrgRulesetError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateOrgRulesetError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateOrgRulesetError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateOrgRulesetError$Unknown extends ReposCreateOrgRulesetError {const ReposCreateOrgRulesetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateOrgRulesetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateOrgRulesetError.unknown($statusCode)'; } 
 }
