// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_zonelockdown.dart';@immutable final class FirewallZonelockdownResponseSingle {const FirewallZonelockdownResponseSingle({required this.result});

factory FirewallZonelockdownResponseSingle.fromJson(Map<String, dynamic> json) { return FirewallZonelockdownResponseSingle(
  result: FirewallZonelockdown.fromJson(json['result'] as Map<String, dynamic>),
); }

final FirewallZonelockdown result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
FirewallZonelockdownResponseSingle copyWith({FirewallZonelockdown? result}) { return FirewallZonelockdownResponseSingle(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallZonelockdownResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallZonelockdownResponseSingle(result: $result)'; } 
 }
