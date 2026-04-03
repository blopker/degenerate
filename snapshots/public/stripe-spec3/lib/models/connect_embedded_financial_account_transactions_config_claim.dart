// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_embedded_financial_account_transactions_features.dart';/// 
@immutable final class ConnectEmbeddedFinancialAccountTransactionsConfigClaim {const ConnectEmbeddedFinancialAccountTransactionsConfigClaim({required this.enabled, required this.features, });

factory ConnectEmbeddedFinancialAccountTransactionsConfigClaim.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedFinancialAccountTransactionsConfigClaim(
  enabled: json['enabled'] as bool,
  features: ConnectEmbeddedFinancialAccountTransactionsFeatures.fromJson(json['features'] as Map<String, dynamic>),
); }

/// Whether the embedded component is enabled.
final bool enabled;

final ConnectEmbeddedFinancialAccountTransactionsFeatures features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'features': features.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('features'); } 
ConnectEmbeddedFinancialAccountTransactionsConfigClaim copyWith({bool? enabled, ConnectEmbeddedFinancialAccountTransactionsFeatures? features, }) { return ConnectEmbeddedFinancialAccountTransactionsConfigClaim(
  enabled: enabled ?? this.enabled,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedFinancialAccountTransactionsConfigClaim &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'ConnectEmbeddedFinancialAccountTransactionsConfigClaim(enabled: $enabled, features: $features)'; } 
 }
