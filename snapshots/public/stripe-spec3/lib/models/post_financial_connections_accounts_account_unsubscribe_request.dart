// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures {const PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures._(this.value);

factory PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures.fromJson(String json) { return switch (json) {
  'transactions' => transactions,
  _ => PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures._(json),
}; }

static const PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures transactions = PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures._('transactions');

static const List<PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures> values = [transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures($value)'; } 
 }
final class PostFinancialConnectionsAccountsAccountUnsubscribeRequest {const PostFinancialConnectionsAccountsAccountUnsubscribeRequest({this.expand, required this.features, });

factory PostFinancialConnectionsAccountsAccountUnsubscribeRequest.fromJson(Map<String, dynamic> json) { return PostFinancialConnectionsAccountsAccountUnsubscribeRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  features: (json['features'] as List<dynamic>).map((e) => PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures.fromJson(e as String)).toList(),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The list of account features from which you would like to unsubscribe.
final List<PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures> features;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'features': features.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('features'); } 
PostFinancialConnectionsAccountsAccountUnsubscribeRequest copyWith({List<String> Function()? expand, List<PostFinancialConnectionsAccountsAccountUnsubscribeRequestFeatures>? features, }) { return PostFinancialConnectionsAccountsAccountUnsubscribeRequest(
  expand: expand != null ? expand() : this.expand,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostFinancialConnectionsAccountsAccountUnsubscribeRequest &&
          listEquals(expand, other.expand) &&
          listEquals(features, other.features); } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), Object.hashAll(features)); } 
@override String toString() { return 'PostFinancialConnectionsAccountsAccountUnsubscribeRequest(expand: $expand, features: $features)'; } 
 }
