// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_budget_org_response503.dart';/// Error responses of `GET /organizations/{org}/settings/billing/budgets/{budget_id}`.
sealed class BillingGetBudgetOrgError {const BillingGetBudgetOrgError();

/// Parse the variant matching the response status code.
factory BillingGetBudgetOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BillingGetBudgetOrgError400.parse(response),
  403 => BillingGetBudgetOrgError403.parse(response),
  404 => BillingGetBudgetOrgError404.parse(response),
  500 => BillingGetBudgetOrgError500.parse(response),
  503 => BillingGetBudgetOrgError503.parse(response),
  _ => BillingGetBudgetOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BillingGetBudgetOrgError400 extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError400(this.data);

factory BillingGetBudgetOrgError400.parse(ApiResponse response) { return BillingGetBudgetOrgError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetBudgetOrgError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetBudgetOrgError400($data)'; } 
 }
/// The `403` response.
@immutable final class BillingGetBudgetOrgError403 extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError403(this.data);

factory BillingGetBudgetOrgError403.parse(ApiResponse response) { return BillingGetBudgetOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetBudgetOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetBudgetOrgError403($data)'; } 
 }
/// The `404` response.
@immutable final class BillingGetBudgetOrgError404 extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError404(this.data);

factory BillingGetBudgetOrgError404.parse(ApiResponse response) { return BillingGetBudgetOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetBudgetOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetBudgetOrgError404($data)'; } 
 }
/// The `500` response.
@immutable final class BillingGetBudgetOrgError500 extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError500(this.data);

factory BillingGetBudgetOrgError500.parse(ApiResponse response) { return BillingGetBudgetOrgError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetBudgetOrgError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetBudgetOrgError500($data)'; } 
 }
/// The `503` response.
@immutable final class BillingGetBudgetOrgError503 extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError503(this.data);

factory BillingGetBudgetOrgError503.parse(ApiResponse response) { return BillingGetBudgetOrgError503(BillingGetBudgetOrgResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BillingGetBudgetOrgResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetBudgetOrgError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetBudgetOrgError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BillingGetBudgetOrgError$Unknown extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetBudgetOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BillingGetBudgetOrgError.unknown($statusCode)'; } 
 }
