// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_timestamp.dart';@immutable final class ShieldSchemaResponseDiscoveryResult {const ShieldSchemaResponseDiscoveryResult({required this.schemas, required this.timestamp, });

factory ShieldSchemaResponseDiscoveryResult.fromJson(Map<String, dynamic> json) { return ShieldSchemaResponseDiscoveryResult(
  schemas: (json['schemas'] as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(),
  timestamp: ShieldTimestamp.fromJson(json['timestamp'] as String),
); }

final List<Map<String,dynamic>> schemas;

final ShieldTimestamp timestamp;

Map<String, dynamic> toJson() { return {
  'schemas': schemas.map((e) => e).toList(),
  'timestamp': timestamp.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('schemas') &&
      json.containsKey('timestamp'); } 
ShieldSchemaResponseDiscoveryResult copyWith({List<Map<String,dynamic>>? schemas, ShieldTimestamp? timestamp, }) { return ShieldSchemaResponseDiscoveryResult(
  schemas: schemas ?? this.schemas,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSchemaResponseDiscoveryResult &&
          listEquals(schemas, other.schemas) &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(Object.hashAll(schemas), timestamp); } 
@override String toString() { return 'ShieldSchemaResponseDiscoveryResult(schemas: $schemas, timestamp: $timestamp)'; } 
 }
