// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_embedded_financial_account_features.dart';/// 
@immutable final class ConnectEmbeddedFinancialAccountConfigClaim {const ConnectEmbeddedFinancialAccountConfigClaim({required this.enabled, required this.features, });

factory ConnectEmbeddedFinancialAccountConfigClaim.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedFinancialAccountConfigClaim(
  enabled: json['enabled'] as bool,
  features: ConnectEmbeddedFinancialAccountFeatures.fromJson(json['features'] as Map<String, dynamic>),
); }

/// Whether the embedded component is enabled.
final bool enabled;

final ConnectEmbeddedFinancialAccountFeatures features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'features': features.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('features'); } 
ConnectEmbeddedFinancialAccountConfigClaim copyWith({bool? enabled, ConnectEmbeddedFinancialAccountFeatures? features, }) { return ConnectEmbeddedFinancialAccountConfigClaim(
  enabled: enabled ?? this.enabled,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedFinancialAccountConfigClaim &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'ConnectEmbeddedFinancialAccountConfigClaim(enabled: $enabled, features: $features)'; } 
 }
