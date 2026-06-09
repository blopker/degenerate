// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /organizations/{org}/settings/billing/budgets/{budget_id}`.
sealed class BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError();

/// Parse the variant matching the response status code.
factory BillingUpdateBudgetOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BillingUpdateBudgetOrgError400.parse(response),
  401 => BillingUpdateBudgetOrgError401.parse(response),
  403 => BillingUpdateBudgetOrgError403.parse(response),
  404 => BillingUpdateBudgetOrgError404.parse(response),
  422 => BillingUpdateBudgetOrgError422.parse(response),
  500 => BillingUpdateBudgetOrgError500.parse(response),
  _ => BillingUpdateBudgetOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BillingUpdateBudgetOrgError400 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError400(this.data);

factory BillingUpdateBudgetOrgError400.parse(ApiResponse response) { return BillingUpdateBudgetOrgError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingUpdateBudgetOrgError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingUpdateBudgetOrgError400($data)'; } 
 }
/// The `401` response.
@immutable final class BillingUpdateBudgetOrgError401 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError401(this.data);

factory BillingUpdateBudgetOrgError401.parse(ApiResponse response) { return BillingUpdateBudgetOrgError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingUpdateBudgetOrgError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingUpdateBudgetOrgError401($data)'; } 
 }
/// The `403` response.
@immutable final class BillingUpdateBudgetOrgError403 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError403(this.data);

factory BillingUpdateBudgetOrgError403.parse(ApiResponse response) { return BillingUpdateBudgetOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingUpdateBudgetOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingUpdateBudgetOrgError403($data)'; } 
 }
/// The `404` response.
@immutable final class BillingUpdateBudgetOrgError404 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError404(this.data);

factory BillingUpdateBudgetOrgError404.parse(ApiResponse response) { return BillingUpdateBudgetOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingUpdateBudgetOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingUpdateBudgetOrgError404($data)'; } 
 }
/// The `422` response.
@immutable final class BillingUpdateBudgetOrgError422 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError422(this.data);

factory BillingUpdateBudgetOrgError422.parse(ApiResponse response) { return BillingUpdateBudgetOrgError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingUpdateBudgetOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingUpdateBudgetOrgError422($data)'; } 
 }
/// The `500` response.
@immutable final class BillingUpdateBudgetOrgError500 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError500(this.data);

factory BillingUpdateBudgetOrgError500.parse(ApiResponse response) { return BillingUpdateBudgetOrgError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingUpdateBudgetOrgError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingUpdateBudgetOrgError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BillingUpdateBudgetOrgError$Unknown extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingUpdateBudgetOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BillingUpdateBudgetOrgError.unknown($statusCode)'; } 
 }
