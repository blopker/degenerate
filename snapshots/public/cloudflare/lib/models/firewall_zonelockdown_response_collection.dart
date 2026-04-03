// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_zonelockdown.dart';@immutable final class FirewallZonelockdownResponseCollection {const FirewallZonelockdownResponseCollection({required this.result});

factory FirewallZonelockdownResponseCollection.fromJson(Map<String, dynamic> json) { return FirewallZonelockdownResponseCollection(
  result: (json['result'] as List<dynamic>).map((e) => FirewallZonelockdown.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<FirewallZonelockdown> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
FirewallZonelockdownResponseCollection copyWith({List<FirewallZonelockdown>? result}) { return FirewallZonelockdownResponseCollection(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallZonelockdownResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'FirewallZonelockdownResponseCollection(result: $result)'; } 
 }
