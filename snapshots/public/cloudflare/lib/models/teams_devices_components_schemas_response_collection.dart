// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_managed_networks.dart';@immutable final class TeamsDevicesComponentsSchemasResponseCollection {const TeamsDevicesComponentsSchemasResponseCollection({this.result});

factory TeamsDevicesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return TeamsDevicesComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TeamsDevicesDeviceManagedNetworks.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TeamsDevicesDeviceManagedNetworks>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesComponentsSchemasResponseCollection copyWith({List<TeamsDevicesDeviceManagedNetworks> Function()? result}) { return TeamsDevicesComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TeamsDevicesComponentsSchemasResponseCollection(result: $result)'; } 
 }
