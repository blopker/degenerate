// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_subnet.dart';final class TunnelSubnetResponseCollection {const TunnelSubnetResponseCollection({this.result});

factory TunnelSubnetResponseCollection.fromJson(Map<String, dynamic> json) { return TunnelSubnetResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TunnelSubnet.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TunnelSubnet>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelSubnetResponseCollection copyWith({List<TunnelSubnet> Function()? result}) { return TunnelSubnetResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelSubnetResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TunnelSubnetResponseCollection(result: $result)'; } 
 }
