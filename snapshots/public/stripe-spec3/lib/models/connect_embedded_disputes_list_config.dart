// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_embedded_disputes_list_features.dart';/// 
@immutable final class ConnectEmbeddedDisputesListConfig {const ConnectEmbeddedDisputesListConfig({required this.enabled, required this.features, });

factory ConnectEmbeddedDisputesListConfig.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedDisputesListConfig(
  enabled: json['enabled'] as bool,
  features: ConnectEmbeddedDisputesListFeatures.fromJson(json['features'] as Map<String, dynamic>),
); }

/// Whether the embedded component is enabled.
final bool enabled;

final ConnectEmbeddedDisputesListFeatures features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'features': features.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('features'); } 
ConnectEmbeddedDisputesListConfig copyWith({bool? enabled, ConnectEmbeddedDisputesListFeatures? features, }) { return ConnectEmbeddedDisputesListConfig(
  enabled: enabled ?? this.enabled,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedDisputesListConfig &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'ConnectEmbeddedDisputesListConfig(enabled: $enabled, features: $features)'; } 
 }
