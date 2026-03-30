// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions {const PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'payment_method' => paymentMethod,
  'transactions' => transactions,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions balances = PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions._('balances');

static const PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions ownership = PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions._('ownership');

static const PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions paymentMethod = PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions._('payment_method');

static const PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions transactions = PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions._('transactions');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions> values = [balances, ownership, paymentMethod, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch {const PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'transactions' => transactions,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch balances = PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch._('balances');

static const PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch ownership = PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch._('ownership');

static const PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch transactions = PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch._('transactions');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch> values = [balances, ownership, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnections {const PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnections({this.permissions, this.prefetch, });

factory PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnections.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnections(
  permissions: (json['permissions'] as List<dynamic>?)?.map((e) => PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions.fromJson(e as String)).toList(),
  prefetch: (json['prefetch'] as List<dynamic>?)?.map((e) => PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch.fromJson(e as String)).toList(),
); }

final List<PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions>? permissions;

final List<PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch>? prefetch;

Map<String, dynamic> toJson() { return {
  if (permissions != null) 'permissions': permissions?.map((e) => e.toJson()).toList(),
  if (prefetch != null) 'prefetch': prefetch?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'permissions', 'prefetch'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnections copyWith({List<PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions> Function()? permissions, List<PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch> Function()? prefetch, }) { return PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnections(
  permissions: permissions != null ? permissions() : this.permissions,
  prefetch: prefetch != null ? prefetch() : this.prefetch,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnections &&
          listEquals(permissions, other.permissions) &&
          listEquals(prefetch, other.prefetch); } 
@override int get hashCode { return Object.hash(Object.hashAll(permissions ?? const []), Object.hashAll(prefetch ?? const [])); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsUsBankAccountFinancialConnections(permissions: $permissions, prefetch: $prefetch)'; } 
 }
