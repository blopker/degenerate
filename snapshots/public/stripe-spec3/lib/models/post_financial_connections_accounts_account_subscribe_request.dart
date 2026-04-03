// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures {const PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures._(this.value);

factory PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures.fromJson(String json) { return switch (json) {
  'transactions' => transactions,
  _ => PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures._(json),
}; }

static const PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures transactions = PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures._('transactions');

static const List<PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures> values = [transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures($value)'; } 
 }
@immutable final class PostFinancialConnectionsAccountsAccountSubscribeRequest {const PostFinancialConnectionsAccountsAccountSubscribeRequest({required this.features, this.expand, });

factory PostFinancialConnectionsAccountsAccountSubscribeRequest.fromJson(Map<String, dynamic> json) { return PostFinancialConnectionsAccountsAccountSubscribeRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  features: (json['features'] as List<dynamic>).map((e) => PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures.fromJson(e as String)).toList(),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The list of account features to which you would like to subscribe.
final List<PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures> features;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'features': features.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('features'); } 
PostFinancialConnectionsAccountsAccountSubscribeRequest copyWith({List<String> Function()? expand, List<PostFinancialConnectionsAccountsAccountSubscribeRequestFeatures>? features, }) { return PostFinancialConnectionsAccountsAccountSubscribeRequest(
  expand: expand != null ? expand() : this.expand,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostFinancialConnectionsAccountsAccountSubscribeRequest &&
          listEquals(expand, other.expand) &&
          listEquals(features, other.features); } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), Object.hashAll(features)); } 
@override String toString() { return 'PostFinancialConnectionsAccountsAccountSubscribeRequest(expand: $expand, features: $features)'; } 
 }
