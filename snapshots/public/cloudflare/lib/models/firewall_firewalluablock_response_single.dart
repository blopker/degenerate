// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_firewalluablock.dart';@immutable final class FirewallFirewalluablockResponseSingle {const FirewallFirewalluablockResponseSingle({this.result});

factory FirewallFirewalluablockResponseSingle.fromJson(Map<String, dynamic> json) { return FirewallFirewalluablockResponseSingle(
  result: json['result'] != null ? FirewallFirewalluablock.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final FirewallFirewalluablock? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
FirewallFirewalluablockResponseSingle copyWith({FirewallFirewalluablock Function()? result}) { return FirewallFirewalluablockResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFirewalluablockResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallFirewalluablockResponseSingle(result: $result)'; } 
 }
