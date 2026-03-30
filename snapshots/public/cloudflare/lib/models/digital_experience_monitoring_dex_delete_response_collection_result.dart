// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_device_dex_test_schemas_http.dart';final class DigitalExperienceMonitoringDexDeleteResponseCollectionResult {const DigitalExperienceMonitoringDexDeleteResponseCollectionResult({this.dexTests});

factory DigitalExperienceMonitoringDexDeleteResponseCollectionResult.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringDexDeleteResponseCollectionResult(
  dexTests: (json['dex_tests'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringDeviceDexTestSchemasHttp.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DigitalExperienceMonitoringDeviceDexTestSchemasHttp>? dexTests;

Map<String, dynamic> toJson() { return {
  if (dexTests != null) 'dex_tests': dexTests?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dex_tests'}.contains(key)); } 
DigitalExperienceMonitoringDexDeleteResponseCollectionResult copyWith({List<DigitalExperienceMonitoringDeviceDexTestSchemasHttp> Function()? dexTests}) { return DigitalExperienceMonitoringDexDeleteResponseCollectionResult(
  dexTests: dexTests != null ? dexTests() : this.dexTests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringDexDeleteResponseCollectionResult &&
          listEquals(dexTests, other.dexTests); } 
@override int get hashCode { return Object.hashAll(dexTests ?? const []).hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringDexDeleteResponseCollectionResult(dexTests: $dexTests)'; } 
 }
