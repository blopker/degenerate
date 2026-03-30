// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param28_financial_connections_filters.dart';final class PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions {const PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions._(this.value);

factory PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'payment_method' => paymentMethod,
  'transactions' => transactions,
  _ => PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions balances = PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions._('balances');

static const PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions ownership = PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions._('ownership');

static const PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions paymentMethod = PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions._('payment_method');

static const PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions transactions = PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions._('transactions');

static const List<PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions> values = [balances, ownership, paymentMethod, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch {const PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch._(this.value);

factory PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'transactions' => transactions,
  _ => PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch balances = PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch._('balances');

static const PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch ownership = PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch._('ownership');

static const PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch transactions = PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch._('transactions');

static const List<PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch> values = [balances, ownership, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam28FinancialConnections {const PaymentIntentPaymentMethodOptionsParam28FinancialConnections({this.filters, this.permissions, this.prefetch, this.returnUrl, });

factory PaymentIntentPaymentMethodOptionsParam28FinancialConnections.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam28FinancialConnections(
  filters: json['filters'] != null ? PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsFilters.fromJson(json['filters'] as Map<String, dynamic>) : null,
  permissions: (json['permissions'] as List<dynamic>?)?.map((e) => PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions.fromJson(e as String)).toList(),
  prefetch: (json['prefetch'] as List<dynamic>?)?.map((e) => PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch.fromJson(e as String)).toList(),
  returnUrl: json['return_url'] as String?,
); }

final PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsFilters? filters;

final List<PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions>? permissions;

final List<PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch>? prefetch;

final String? returnUrl;

Map<String, dynamic> toJson() { return {
  if (filters != null) 'filters': filters?.toJson(),
  if (permissions != null) 'permissions': permissions?.map((e) => e.toJson()).toList(),
  if (prefetch != null) 'prefetch': prefetch?.map((e) => e.toJson()).toList(),
  'return_url': ?returnUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'filters', 'permissions', 'prefetch', 'return_url'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam28FinancialConnections copyWith({PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsFilters Function()? filters, List<PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPermissions> Function()? permissions, List<PaymentIntentPaymentMethodOptionsParam28FinancialConnectionsPrefetch> Function()? prefetch, String Function()? returnUrl, }) { return PaymentIntentPaymentMethodOptionsParam28FinancialConnections(
  filters: filters != null ? filters() : this.filters,
  permissions: permissions != null ? permissions() : this.permissions,
  prefetch: prefetch != null ? prefetch() : this.prefetch,
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam28FinancialConnections &&
          filters == other.filters &&
          listEquals(permissions, other.permissions) &&
          listEquals(prefetch, other.prefetch) &&
          returnUrl == other.returnUrl; } 
@override int get hashCode { return Object.hash(filters, Object.hashAll(permissions ?? const []), Object.hashAll(prefetch ?? const []), returnUrl); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam28FinancialConnections(filters: $filters, permissions: $permissions, prefetch: $prefetch, returnUrl: $returnUrl)'; } 
 }
