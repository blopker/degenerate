// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_embedded_payment_disputes_features.dart';/// 
@immutable final class ConnectEmbeddedPaymentDisputesConfig {const ConnectEmbeddedPaymentDisputesConfig({required this.enabled, required this.features, });

factory ConnectEmbeddedPaymentDisputesConfig.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedPaymentDisputesConfig(
  enabled: json['enabled'] as bool,
  features: ConnectEmbeddedPaymentDisputesFeatures.fromJson(json['features'] as Map<String, dynamic>),
); }

/// Whether the embedded component is enabled.
final bool enabled;

final ConnectEmbeddedPaymentDisputesFeatures features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'features': features.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('features'); } 
ConnectEmbeddedPaymentDisputesConfig copyWith({bool? enabled, ConnectEmbeddedPaymentDisputesFeatures? features, }) { return ConnectEmbeddedPaymentDisputesConfig(
  enabled: enabled ?? this.enabled,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedPaymentDisputesConfig &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'ConnectEmbeddedPaymentDisputesConfig(enabled: $enabled, features: $features)'; } 
 }
