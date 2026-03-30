// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_override.dart';final class FirewallOverrideResponseCollection {const FirewallOverrideResponseCollection({required this.result});

factory FirewallOverrideResponseCollection.fromJson(Map<String, dynamic> json) { return FirewallOverrideResponseCollection(
  result: (json['result'] as List<dynamic>).map((e) => FirewallOverride.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<FirewallOverride> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
FirewallOverrideResponseCollection copyWith({List<FirewallOverride>? result}) { return FirewallOverrideResponseCollection(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallOverrideResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'FirewallOverrideResponseCollection(result: $result)'; } 
 }
