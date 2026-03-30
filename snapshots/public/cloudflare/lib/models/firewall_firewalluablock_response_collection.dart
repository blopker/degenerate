// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_firewalluablock.dart';final class FirewallFirewalluablockResponseCollection {const FirewallFirewalluablockResponseCollection({this.result});

factory FirewallFirewalluablockResponseCollection.fromJson(Map<String, dynamic> json) { return FirewallFirewalluablockResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => FirewallFirewalluablock.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<FirewallFirewalluablock>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
FirewallFirewalluablockResponseCollection copyWith({List<FirewallFirewalluablock> Function()? result}) { return FirewallFirewalluablockResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFirewalluablockResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'FirewallFirewalluablockResponseCollection(result: $result)'; } 
 }
