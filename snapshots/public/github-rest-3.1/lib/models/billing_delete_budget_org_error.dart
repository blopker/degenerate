// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_delete_budget_org_response503.dart';/// Error responses of `DELETE /organizations/{org}/settings/billing/budgets/{budget_id}`.
sealed class BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError();

/// Parse the variant matching the response status code.
factory BillingDeleteBudgetOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BillingDeleteBudgetOrgError400.parse(response),
  403 => BillingDeleteBudgetOrgError403.parse(response),
  404 => BillingDeleteBudgetOrgError404.parse(response),
  500 => BillingDeleteBudgetOrgError500.parse(response),
  503 => BillingDeleteBudgetOrgError503.parse(response),
  _ => BillingDeleteBudgetOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BillingDeleteBudgetOrgError400 extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError400(this.data);

factory BillingDeleteBudgetOrgError400.parse(ApiResponse response) { return BillingDeleteBudgetOrgError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingDeleteBudgetOrgError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingDeleteBudgetOrgError400($data)'; } 
 }
/// The `403` response.
@immutable final class BillingDeleteBudgetOrgError403 extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError403(this.data);

factory BillingDeleteBudgetOrgError403.parse(ApiResponse response) { return BillingDeleteBudgetOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingDeleteBudgetOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingDeleteBudgetOrgError403($data)'; } 
 }
/// The `404` response.
@immutable final class BillingDeleteBudgetOrgError404 extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError404(this.data);

factory BillingDeleteBudgetOrgError404.parse(ApiResponse response) { return BillingDeleteBudgetOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingDeleteBudgetOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingDeleteBudgetOrgError404($data)'; } 
 }
/// The `500` response.
@immutable final class BillingDeleteBudgetOrgError500 extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError500(this.data);

factory BillingDeleteBudgetOrgError500.parse(ApiResponse response) { return BillingDeleteBudgetOrgError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingDeleteBudgetOrgError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingDeleteBudgetOrgError500($data)'; } 
 }
/// The `503` response.
@immutable final class BillingDeleteBudgetOrgError503 extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError503(this.data);

factory BillingDeleteBudgetOrgError503.parse(ApiResponse response) { return BillingDeleteBudgetOrgError503(BillingDeleteBudgetOrgResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BillingDeleteBudgetOrgResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingDeleteBudgetOrgError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingDeleteBudgetOrgError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BillingDeleteBudgetOrgError$Unknown extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingDeleteBudgetOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BillingDeleteBudgetOrgError.unknown($statusCode)'; } 
 }
