// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_exclude_split_tunnel_with_address.dart';import 'teams_devices_exclude_split_tunnel_with_host.dart';import 'teams_devices_split_tunnel.dart';@immutable final class TeamsDevicesSplitTunnelResponseCollection {const TeamsDevicesSplitTunnelResponseCollection({this.result});

factory TeamsDevicesSplitTunnelResponseCollection.fromJson(Map<String, dynamic> json) { return TeamsDevicesSplitTunnelResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesExcludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesExcludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<TeamsDevicesSplitTunnel>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesSplitTunnelResponseCollection copyWith({List<TeamsDevicesSplitTunnel> Function()? result}) { return TeamsDevicesSplitTunnelResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesSplitTunnelResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TeamsDevicesSplitTunnelResponseCollection(result: $result)'; } 
 }
