// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_override.dart';@immutable final class FirewallOverrideResponseSingle {const FirewallOverrideResponseSingle({required this.result});

factory FirewallOverrideResponseSingle.fromJson(Map<String, dynamic> json) { return FirewallOverrideResponseSingle(
  result: FirewallOverride.fromJson(json['result'] as Map<String, dynamic>),
); }

final FirewallOverride result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
FirewallOverrideResponseSingle copyWith({FirewallOverride? result}) { return FirewallOverrideResponseSingle(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallOverrideResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallOverrideResponseSingle(result: $result)'; } 
 }
