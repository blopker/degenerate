// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_dex_test_schemas_http.dart';@immutable final class TeamsDevicesDexResponseCollection {const TeamsDevicesDexResponseCollection({this.result});

factory TeamsDevicesDexResponseCollection.fromJson(Map<String, dynamic> json) { return TeamsDevicesDexResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TeamsDevicesDeviceDexTestSchemasHttp.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TeamsDevicesDeviceDexTestSchemasHttp>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesDexResponseCollection copyWith({List<TeamsDevicesDeviceDexTestSchemasHttp> Function()? result}) { return TeamsDevicesDexResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDexResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TeamsDevicesDexResponseCollection(result: $result)'; } 
 }
