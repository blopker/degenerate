// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Enable host selection in egress policies.
@immutable final class ZeroTrustGatewayHostSelectorSettings {const ZeroTrustGatewayHostSelectorSettings({this.enabled = const Omittable.absent()});

factory ZeroTrustGatewayHostSelectorSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayHostSelectorSettings(
  enabled: json.containsKey('enabled') ? Omittable(json['enabled'] as bool?) : const Omittable.absent(),
); }

/// Specify whether to enable filtering via hosts for egress policies.
final Omittable<bool?> enabled;

Map<String, dynamic> toJson() { return {
  if (enabled.isPresent) 'enabled': enabled.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
ZeroTrustGatewayHostSelectorSettings copyWith({Omittable<bool?>? enabled}) { return ZeroTrustGatewayHostSelectorSettings(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayHostSelectorSettings &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayHostSelectorSettings(enabled: $enabled)'; } 
 }
