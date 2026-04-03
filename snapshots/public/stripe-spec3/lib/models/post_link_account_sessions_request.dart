// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_link_account_sessions_request_account_holder.dart';import 'post_link_account_sessions_request_filters.dart';@immutable final class PostLinkAccountSessionsRequestPermissions {const PostLinkAccountSessionsRequestPermissions._(this.value);

factory PostLinkAccountSessionsRequestPermissions.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'payment_method' => paymentMethod,
  'transactions' => transactions,
  _ => PostLinkAccountSessionsRequestPermissions._(json),
}; }

static const PostLinkAccountSessionsRequestPermissions balances = PostLinkAccountSessionsRequestPermissions._('balances');

static const PostLinkAccountSessionsRequestPermissions ownership = PostLinkAccountSessionsRequestPermissions._('ownership');

static const PostLinkAccountSessionsRequestPermissions paymentMethod = PostLinkAccountSessionsRequestPermissions._('payment_method');

static const PostLinkAccountSessionsRequestPermissions transactions = PostLinkAccountSessionsRequestPermissions._('transactions');

static const List<PostLinkAccountSessionsRequestPermissions> values = [balances, ownership, paymentMethod, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostLinkAccountSessionsRequestPermissions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostLinkAccountSessionsRequestPermissions($value)'; } 
 }
@immutable final class PostLinkAccountSessionsRequestPrefetch {const PostLinkAccountSessionsRequestPrefetch._(this.value);

factory PostLinkAccountSessionsRequestPrefetch.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'transactions' => transactions,
  _ => PostLinkAccountSessionsRequestPrefetch._(json),
}; }

static const PostLinkAccountSessionsRequestPrefetch balances = PostLinkAccountSessionsRequestPrefetch._('balances');

static const PostLinkAccountSessionsRequestPrefetch ownership = PostLinkAccountSessionsRequestPrefetch._('ownership');

static const PostLinkAccountSessionsRequestPrefetch transactions = PostLinkAccountSessionsRequestPrefetch._('transactions');

static const List<PostLinkAccountSessionsRequestPrefetch> values = [balances, ownership, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostLinkAccountSessionsRequestPrefetch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostLinkAccountSessionsRequestPrefetch($value)'; } 
 }
@immutable final class PostLinkAccountSessionsRequest {const PostLinkAccountSessionsRequest({required this.accountHolder, required this.permissions, this.expand, this.filters, this.prefetch, this.returnUrl, });

factory PostLinkAccountSessionsRequest.fromJson(Map<String, dynamic> json) { return PostLinkAccountSessionsRequest(
  accountHolder: PostLinkAccountSessionsRequestAccountHolder.fromJson(json['account_holder'] as Map<String, dynamic>),
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  filters: json['filters'] != null ? PostLinkAccountSessionsRequestFilters.fromJson(json['filters'] as Map<String, dynamic>) : null,
  permissions: (json['permissions'] as List<dynamic>).map((e) => PostLinkAccountSessionsRequestPermissions.fromJson(e as String)).toList(),
  prefetch: (json['prefetch'] as List<dynamic>?)?.map((e) => PostLinkAccountSessionsRequestPrefetch.fromJson(e as String)).toList(),
  returnUrl: json['return_url'] as String?,
); }

/// The account holder to link accounts for.
final PostLinkAccountSessionsRequestAccountHolder accountHolder;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Filters to restrict the kinds of accounts to collect.
final PostLinkAccountSessionsRequestFilters? filters;

/// List of data features that you would like to request access to.
/// 
/// Possible values are `balances`, `transactions`, `ownership`, and `payment_method`.
final List<PostLinkAccountSessionsRequestPermissions> permissions;

/// List of data features that you would like to retrieve upon account creation.
final List<PostLinkAccountSessionsRequestPrefetch>? prefetch;

/// For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
final String? returnUrl;

Map<String, dynamic> toJson() { return {
  'account_holder': accountHolder.toJson(),
  'expand': ?expand,
  if (filters != null) 'filters': filters?.toJson(),
  'permissions': permissions.map((e) => e.toJson()).toList(),
  if (prefetch != null) 'prefetch': prefetch?.map((e) => e.toJson()).toList(),
  'return_url': ?returnUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_holder') &&
      json.containsKey('permissions'); } 
PostLinkAccountSessionsRequest copyWith({PostLinkAccountSessionsRequestAccountHolder? accountHolder, List<String> Function()? expand, PostLinkAccountSessionsRequestFilters Function()? filters, List<PostLinkAccountSessionsRequestPermissions>? permissions, List<PostLinkAccountSessionsRequestPrefetch> Function()? prefetch, String Function()? returnUrl, }) { return PostLinkAccountSessionsRequest(
  accountHolder: accountHolder ?? this.accountHolder,
  expand: expand != null ? expand() : this.expand,
  filters: filters != null ? filters() : this.filters,
  permissions: permissions ?? this.permissions,
  prefetch: prefetch != null ? prefetch() : this.prefetch,
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostLinkAccountSessionsRequest &&
          accountHolder == other.accountHolder &&
          listEquals(expand, other.expand) &&
          filters == other.filters &&
          listEquals(permissions, other.permissions) &&
          listEquals(prefetch, other.prefetch) &&
          returnUrl == other.returnUrl; } 
@override int get hashCode { return Object.hash(accountHolder, Object.hashAll(expand ?? const []), filters, Object.hashAll(permissions), Object.hashAll(prefetch ?? const []), returnUrl); } 
@override String toString() { return 'PostLinkAccountSessionsRequest(accountHolder: $accountHolder, expand: $expand, filters: $filters, permissions: $permissions, prefetch: $prefetch, returnUrl: $returnUrl)'; } 
 }
