// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudflare_pipelines_timestamp_unit.dart';final class CloudflarePipelinesTimestampField {const CloudflarePipelinesTimestampField({this.unit});

factory CloudflarePipelinesTimestampField.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesTimestampField(
  unit: json['unit'] != null ? CloudflarePipelinesTimestampUnit.fromJson(json['unit'] as String) : null,
); }

final CloudflarePipelinesTimestampUnit? unit;

Map<String, dynamic> toJson() { return {
  if (unit != null) 'unit': unit?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'unit'}.contains(key)); } 
CloudflarePipelinesTimestampField copyWith({CloudflarePipelinesTimestampUnit Function()? unit}) { return CloudflarePipelinesTimestampField(
  unit: unit != null ? unit() : this.unit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesTimestampField &&
          unit == other.unit; } 
@override int get hashCode { return unit.hashCode; } 
@override String toString() { return 'CloudflarePipelinesTimestampField(unit: $unit)'; } 
 }
