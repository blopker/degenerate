// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_dex_test_schemas_http.dart';@immutable final class TeamsDevicesDexDeleteResponseCollectionResult {const TeamsDevicesDexDeleteResponseCollectionResult({this.dexTests});

factory TeamsDevicesDexDeleteResponseCollectionResult.fromJson(Map<String, dynamic> json) { return TeamsDevicesDexDeleteResponseCollectionResult(
  dexTests: (json['dex_tests'] as List<dynamic>?)?.map((e) => TeamsDevicesDeviceDexTestSchemasHttp.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TeamsDevicesDeviceDexTestSchemasHttp>? dexTests;

Map<String, dynamic> toJson() { return {
  if (dexTests != null) 'dex_tests': dexTests?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dex_tests'}.contains(key)); } 
TeamsDevicesDexDeleteResponseCollectionResult copyWith({List<TeamsDevicesDeviceDexTestSchemasHttp> Function()? dexTests}) { return TeamsDevicesDexDeleteResponseCollectionResult(
  dexTests: dexTests != null ? dexTests() : this.dexTests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDexDeleteResponseCollectionResult &&
          listEquals(dexTests, other.dexTests); } 
@override int get hashCode { return Object.hashAll(dexTests ?? const []).hashCode; } 
@override String toString() { return 'TeamsDevicesDexDeleteResponseCollectionResult(dexTests: $dexTests)'; } 
 }
