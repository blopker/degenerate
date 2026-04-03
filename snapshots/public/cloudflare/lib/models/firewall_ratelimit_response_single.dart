// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_ratelimit.dart';@immutable final class FirewallRatelimitResponseSingle {const FirewallRatelimitResponseSingle({this.result});

factory FirewallRatelimitResponseSingle.fromJson(Map<String, dynamic> json) { return FirewallRatelimitResponseSingle(
  result: json['result'] != null ? FirewallRatelimit.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final FirewallRatelimit? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
FirewallRatelimitResponseSingle copyWith({FirewallRatelimit Function()? result}) { return FirewallRatelimitResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallRatelimitResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallRatelimitResponseSingle(result: $result)'; } 
 }
