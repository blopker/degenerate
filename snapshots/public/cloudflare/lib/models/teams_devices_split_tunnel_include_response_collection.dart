// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_include_split_tunnel_with_address.dart';import 'teams_devices_include_split_tunnel_with_host.dart';import 'teams_devices_split_tunnel_include.dart';final class TeamsDevicesSplitTunnelIncludeResponseCollection {const TeamsDevicesSplitTunnelIncludeResponseCollection({this.result});

factory TeamsDevicesSplitTunnelIncludeResponseCollection.fromJson(Map<String, dynamic> json) { return TeamsDevicesSplitTunnelIncludeResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => TeamsDevicesIncludeSplitTunnelWithAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => TeamsDevicesIncludeSplitTunnelWithHost.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<TeamsDevicesSplitTunnelInclude>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesSplitTunnelIncludeResponseCollection copyWith({List<TeamsDevicesSplitTunnelInclude> Function()? result}) { return TeamsDevicesSplitTunnelIncludeResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesSplitTunnelIncludeResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TeamsDevicesSplitTunnelIncludeResponseCollection(result: $result)'; } 
 }
