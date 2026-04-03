// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param7_financial_connections_filters.dart';@immutable final class InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions {const InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions._(this.value);

factory InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'payment_method' => paymentMethod,
  'transactions' => transactions,
  _ => InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions._(json),
}; }

static const InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions balances = InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions._('balances');

static const InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions ownership = InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions._('ownership');

static const InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions paymentMethod = InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions._('payment_method');

static const InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions transactions = InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions._('transactions');

static const List<InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions> values = [balances, ownership, paymentMethod, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch {const InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch._(this.value);

factory InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'transactions' => transactions,
  _ => InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch._(json),
}; }

static const InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch balances = InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch._('balances');

static const InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch ownership = InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch._('ownership');

static const InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch transactions = InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch._('transactions');

static const List<InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch> values = [balances, ownership, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam7FinancialConnections {const InvoicePaymentMethodOptionsParam7FinancialConnections({this.filters, this.permissions, this.prefetch, });

factory InvoicePaymentMethodOptionsParam7FinancialConnections.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam7FinancialConnections(
  filters: json['filters'] != null ? InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters.fromJson(json['filters'] as Map<String, dynamic>) : null,
  permissions: (json['permissions'] as List<dynamic>?)?.map((e) => InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions.fromJson(e as String)).toList(),
  prefetch: (json['prefetch'] as List<dynamic>?)?.map((e) => InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch.fromJson(e as String)).toList(),
); }

final InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters? filters;

final List<InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions>? permissions;

final List<InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch>? prefetch;

Map<String, dynamic> toJson() { return {
  if (filters != null) 'filters': filters?.toJson(),
  if (permissions != null) 'permissions': permissions?.map((e) => e.toJson()).toList(),
  if (prefetch != null) 'prefetch': prefetch?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'filters', 'permissions', 'prefetch'}.contains(key)); } 
InvoicePaymentMethodOptionsParam7FinancialConnections copyWith({InvoicePaymentMethodOptionsParam7FinancialConnectionsFilters Function()? filters, List<InvoicePaymentMethodOptionsParam7FinancialConnectionsPermissions> Function()? permissions, List<InvoicePaymentMethodOptionsParam7FinancialConnectionsPrefetch> Function()? prefetch, }) { return InvoicePaymentMethodOptionsParam7FinancialConnections(
  filters: filters != null ? filters() : this.filters,
  permissions: permissions != null ? permissions() : this.permissions,
  prefetch: prefetch != null ? prefetch() : this.prefetch,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam7FinancialConnections &&
          filters == other.filters &&
          listEquals(permissions, other.permissions) &&
          listEquals(prefetch, other.prefetch); } 
@override int get hashCode { return Object.hash(filters, Object.hashAll(permissions ?? const []), Object.hashAll(prefetch ?? const [])); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam7FinancialConnections(filters: $filters, permissions: $permissions, prefetch: $prefetch)'; } 
 }
