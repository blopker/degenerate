// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param44_financial_connections_filters.dart';@immutable final class InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions {const InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions._(this.value);

factory InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'payment_method' => paymentMethod,
  'transactions' => transactions,
  _ => InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions._(json),
}; }

static const InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions balances = InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions._('balances');

static const InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions ownership = InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions._('ownership');

static const InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions paymentMethod = InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions._('payment_method');

static const InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions transactions = InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions._('transactions');

static const List<InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions> values = [balances, ownership, paymentMethod, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch {const InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch._(this.value);

factory InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'transactions' => transactions,
  _ => InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch._(json),
}; }

static const InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch balances = InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch._('balances');

static const InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch ownership = InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch._('ownership');

static const InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch transactions = InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch._('transactions');

static const List<InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch> values = [balances, ownership, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam44FinancialConnections {const InvoicePaymentMethodOptionsParam44FinancialConnections({this.filters, this.permissions, this.prefetch, });

factory InvoicePaymentMethodOptionsParam44FinancialConnections.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam44FinancialConnections(
  filters: json['filters'] != null ? InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters.fromJson(json['filters'] as Map<String, dynamic>) : null,
  permissions: (json['permissions'] as List<dynamic>?)?.map((e) => InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions.fromJson(e as String)).toList(),
  prefetch: (json['prefetch'] as List<dynamic>?)?.map((e) => InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch.fromJson(e as String)).toList(),
); }

final InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters? filters;

final List<InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions>? permissions;

final List<InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch>? prefetch;

Map<String, dynamic> toJson() { return {
  if (filters != null) 'filters': filters?.toJson(),
  if (permissions != null) 'permissions': permissions?.map((e) => e.toJson()).toList(),
  if (prefetch != null) 'prefetch': prefetch?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'filters', 'permissions', 'prefetch'}.contains(key)); } 
InvoicePaymentMethodOptionsParam44FinancialConnections copyWith({InvoicePaymentMethodOptionsParam44FinancialConnectionsFilters Function()? filters, List<InvoicePaymentMethodOptionsParam44FinancialConnectionsPermissions> Function()? permissions, List<InvoicePaymentMethodOptionsParam44FinancialConnectionsPrefetch> Function()? prefetch, }) { return InvoicePaymentMethodOptionsParam44FinancialConnections(
  filters: filters != null ? filters() : this.filters,
  permissions: permissions != null ? permissions() : this.permissions,
  prefetch: prefetch != null ? prefetch() : this.prefetch,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam44FinancialConnections &&
          filters == other.filters &&
          listEquals(permissions, other.permissions) &&
          listEquals(prefetch, other.prefetch); } 
@override int get hashCode { return Object.hash(filters, Object.hashAll(permissions ?? const []), Object.hashAll(prefetch ?? const [])); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam44FinancialConnections(filters: $filters, permissions: $permissions, prefetch: $prefetch)'; } 
 }
