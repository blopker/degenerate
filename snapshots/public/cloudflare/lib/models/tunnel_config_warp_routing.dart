// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Enable private network access from WARP users to private network routes. This is enabled if the tunnel has an assigned route.
@immutable final class TunnelConfigWarpRouting {const TunnelConfigWarpRouting({this.enabled});

factory TunnelConfigWarpRouting.fromJson(Map<String, dynamic> json) { return TunnelConfigWarpRouting(
  enabled: json['enabled'] as bool?,
); }

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
TunnelConfigWarpRouting copyWith({bool Function()? enabled}) { return TunnelConfigWarpRouting(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelConfigWarpRouting &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'TunnelConfigWarpRouting(enabled: $enabled)'; } 
 }
