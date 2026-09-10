// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specify activity log settings.
@immutable final class ZeroTrustGatewayActivityLogSettings {const ZeroTrustGatewayActivityLogSettings({this.enabled = const Omittable.absent()});

factory ZeroTrustGatewayActivityLogSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayActivityLogSettings(
  enabled: json.containsKey('enabled') ? Omittable(json['enabled'] as bool?) : const Omittable.absent(),
); }

/// Specify whether to log activity.
final Omittable<bool?> enabled;

Map<String, dynamic> toJson() { return {
  if (enabled.isPresent) 'enabled': enabled.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
ZeroTrustGatewayActivityLogSettings copyWith({Omittable<bool?>? enabled}) { return ZeroTrustGatewayActivityLogSettings(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayActivityLogSettings &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayActivityLogSettings(enabled: $enabled)'; } 
 }
