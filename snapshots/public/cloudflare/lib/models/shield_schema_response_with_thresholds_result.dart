// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ShieldSchemaResponseWithThresholdsResult {const ShieldSchemaResponseWithThresholdsResult({this.schemas, this.timestamp, });

factory ShieldSchemaResponseWithThresholdsResult.fromJson(Map<String, dynamic> json) { return ShieldSchemaResponseWithThresholdsResult(
  schemas: (json['schemas'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList(),
  timestamp: json['timestamp'] as String?,
); }

final List<Map<String,dynamic>>? schemas;

final String? timestamp;

Map<String, dynamic> toJson() { return {
  if (schemas != null) 'schemas': schemas?.map((e) => e).toList(),
  'timestamp': ?timestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'schemas', 'timestamp'}.contains(key)); } 
ShieldSchemaResponseWithThresholdsResult copyWith({List<Map<String, dynamic>> Function()? schemas, String Function()? timestamp, }) { return ShieldSchemaResponseWithThresholdsResult(
  schemas: schemas != null ? schemas() : this.schemas,
  timestamp: timestamp != null ? timestamp() : this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSchemaResponseWithThresholdsResult &&
          listEquals(schemas, other.schemas) &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(Object.hashAll(schemas ?? const []), timestamp); } 
@override String toString() { return 'ShieldSchemaResponseWithThresholdsResult(schemas: $schemas, timestamp: $timestamp)'; } 
 }
