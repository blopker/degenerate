// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /marketplace_listing/plans/{plan_id}/accounts`.
sealed class AppsListAccountsForPlanError {const AppsListAccountsForPlanError();

/// Parse the variant matching the response status code.
factory AppsListAccountsForPlanError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => AppsListAccountsForPlanError401.parse(response),
  404 => AppsListAccountsForPlanError404.parse(response),
  422 => AppsListAccountsForPlanError422.parse(response),
  _ => AppsListAccountsForPlanError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class AppsListAccountsForPlanError401 extends AppsListAccountsForPlanError {const AppsListAccountsForPlanError401(this.data);

factory AppsListAccountsForPlanError401.parse(ApiResponse response) { return AppsListAccountsForPlanError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListAccountsForPlanError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListAccountsForPlanError401($data)'; } 
 }
/// The `404` response.
@immutable final class AppsListAccountsForPlanError404 extends AppsListAccountsForPlanError {const AppsListAccountsForPlanError404(this.data);

factory AppsListAccountsForPlanError404.parse(ApiResponse response) { return AppsListAccountsForPlanError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListAccountsForPlanError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListAccountsForPlanError404($data)'; } 
 }
/// The `422` response.
@immutable final class AppsListAccountsForPlanError422 extends AppsListAccountsForPlanError {const AppsListAccountsForPlanError422(this.data);

factory AppsListAccountsForPlanError422.parse(ApiResponse response) { return AppsListAccountsForPlanError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListAccountsForPlanError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsListAccountsForPlanError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsListAccountsForPlanError$Unknown extends AppsListAccountsForPlanError {const AppsListAccountsForPlanError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListAccountsForPlanError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsListAccountsForPlanError.unknown($statusCode)'; } 
 }
