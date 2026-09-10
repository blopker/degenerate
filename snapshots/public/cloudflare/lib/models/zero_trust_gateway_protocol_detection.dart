// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specify whether to detect protocols from the initial bytes of client traffic.
@immutable final class ZeroTrustGatewayProtocolDetection {const ZeroTrustGatewayProtocolDetection({this.enabled = const Omittable.absent()});

factory ZeroTrustGatewayProtocolDetection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayProtocolDetection(
  enabled: json.containsKey('enabled') ? Omittable(json['enabled'] as bool?) : const Omittable.absent(),
); }

/// Specify whether to detect protocols from the initial bytes of client traffic.
final Omittable<bool?> enabled;

Map<String, dynamic> toJson() { return {
  if (enabled.isPresent) 'enabled': enabled.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
ZeroTrustGatewayProtocolDetection copyWith({Omittable<bool?>? enabled}) { return ZeroTrustGatewayProtocolDetection(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayProtocolDetection &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayProtocolDetection(enabled: $enabled)'; } 
 }
