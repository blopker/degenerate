// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_private_payment_methods_financial_connections_common_linked_account_options_filters.dart';@immutable final class LinkedAccountOptionsCommonPermissions {const LinkedAccountOptionsCommonPermissions._(this.value);

factory LinkedAccountOptionsCommonPermissions.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'payment_method' => paymentMethod,
  'transactions' => transactions,
  _ => LinkedAccountOptionsCommonPermissions._(json),
}; }

static const LinkedAccountOptionsCommonPermissions balances = LinkedAccountOptionsCommonPermissions._('balances');

static const LinkedAccountOptionsCommonPermissions ownership = LinkedAccountOptionsCommonPermissions._('ownership');

static const LinkedAccountOptionsCommonPermissions paymentMethod = LinkedAccountOptionsCommonPermissions._('payment_method');

static const LinkedAccountOptionsCommonPermissions transactions = LinkedAccountOptionsCommonPermissions._('transactions');

static const List<LinkedAccountOptionsCommonPermissions> values = [balances, ownership, paymentMethod, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LinkedAccountOptionsCommonPermissions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LinkedAccountOptionsCommonPermissions($value)'; } 
 }
@immutable final class LinkedAccountOptionsCommonPrefetch {const LinkedAccountOptionsCommonPrefetch._(this.value);

factory LinkedAccountOptionsCommonPrefetch.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'transactions' => transactions,
  _ => LinkedAccountOptionsCommonPrefetch._(json),
}; }

static const LinkedAccountOptionsCommonPrefetch balances = LinkedAccountOptionsCommonPrefetch._('balances');

static const LinkedAccountOptionsCommonPrefetch ownership = LinkedAccountOptionsCommonPrefetch._('ownership');

static const LinkedAccountOptionsCommonPrefetch transactions = LinkedAccountOptionsCommonPrefetch._('transactions');

static const List<LinkedAccountOptionsCommonPrefetch> values = [balances, ownership, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LinkedAccountOptionsCommonPrefetch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LinkedAccountOptionsCommonPrefetch($value)'; } 
 }
/// 
@immutable final class LinkedAccountOptionsCommon {const LinkedAccountOptionsCommon({this.filters, this.permissions, this.prefetch, this.returnUrl, });

factory LinkedAccountOptionsCommon.fromJson(Map<String, dynamic> json) { return LinkedAccountOptionsCommon(
  filters: json['filters'] != null ? PaymentFlowsPrivatePaymentMethodsFinancialConnectionsCommonLinkedAccountOptionsFilters.fromJson(json['filters'] as Map<String, dynamic>) : null,
  permissions: (json['permissions'] as List<dynamic>?)?.map((e) => LinkedAccountOptionsCommonPermissions.fromJson(e as String)).toList(),
  prefetch: (json['prefetch'] as List<dynamic>?)?.map((e) => LinkedAccountOptionsCommonPrefetch.fromJson(e as String)).toList(),
  returnUrl: json['return_url'] as String?,
); }

final PaymentFlowsPrivatePaymentMethodsFinancialConnectionsCommonLinkedAccountOptionsFilters? filters;

/// The list of permissions to request. The `payment_method` permission must be included.
final List<LinkedAccountOptionsCommonPermissions>? permissions;

/// Data features requested to be retrieved upon account creation.
final List<LinkedAccountOptionsCommonPrefetch>? prefetch;

/// For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
final String? returnUrl;

Map<String, dynamic> toJson() { return {
  if (filters != null) 'filters': filters?.toJson(),
  if (permissions != null) 'permissions': permissions?.map((e) => e.toJson()).toList(),
  if (prefetch != null) 'prefetch': prefetch?.map((e) => e.toJson()).toList(),
  'return_url': ?returnUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'filters', 'permissions', 'prefetch', 'return_url'}.contains(key)); } 
LinkedAccountOptionsCommon copyWith({PaymentFlowsPrivatePaymentMethodsFinancialConnectionsCommonLinkedAccountOptionsFilters Function()? filters, List<LinkedAccountOptionsCommonPermissions> Function()? permissions, List<LinkedAccountOptionsCommonPrefetch>? Function()? prefetch, String Function()? returnUrl, }) { return LinkedAccountOptionsCommon(
  filters: filters != null ? filters() : this.filters,
  permissions: permissions != null ? permissions() : this.permissions,
  prefetch: prefetch != null ? prefetch() : this.prefetch,
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LinkedAccountOptionsCommon &&
          filters == other.filters &&
          listEquals(permissions, other.permissions) &&
          listEquals(prefetch, other.prefetch) &&
          returnUrl == other.returnUrl; } 
@override int get hashCode { return Object.hash(filters, Object.hashAll(permissions ?? const []), Object.hashAll(prefetch ?? const []), returnUrl); } 
@override String toString() { return 'LinkedAccountOptionsCommon(filters: $filters, permissions: $permissions, prefetch: $prefetch, returnUrl: $returnUrl)'; } 
 }
