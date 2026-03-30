// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_device_dex_test_schemas_http.dart';final class DigitalExperienceMonitoringDexResponseCollection {const DigitalExperienceMonitoringDexResponseCollection({this.result});

factory DigitalExperienceMonitoringDexResponseCollection.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringDexResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringDeviceDexTestSchemasHttp.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DigitalExperienceMonitoringDeviceDexTestSchemasHttp>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DigitalExperienceMonitoringDexResponseCollection copyWith({List<DigitalExperienceMonitoringDeviceDexTestSchemasHttp> Function()? result}) { return DigitalExperienceMonitoringDexResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringDexResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringDexResponseCollection(result: $result)'; } 
 }
