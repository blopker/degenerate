// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_filter.dart';@immutable final class FirewallFilterResponseSingle {const FirewallFilterResponseSingle({required this.result});

factory FirewallFilterResponseSingle.fromJson(Map<String, dynamic> json) { return FirewallFilterResponseSingle(
  result: FirewallFilter.fromJson(json['result'] as Map<String, dynamic>),
); }

final FirewallFilter result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
FirewallFilterResponseSingle copyWith({FirewallFilter? result}) { return FirewallFilterResponseSingle(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilterResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallFilterResponseSingle(result: $result)'; } 
 }
