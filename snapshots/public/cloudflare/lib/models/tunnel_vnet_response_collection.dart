// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_virtual_network.dart';@immutable final class TunnelVnetResponseCollection {const TunnelVnetResponseCollection({this.result});

factory TunnelVnetResponseCollection.fromJson(Map<String, dynamic> json) { return TunnelVnetResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TunnelVirtualNetwork.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TunnelVirtualNetwork>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelVnetResponseCollection copyWith({List<TunnelVirtualNetwork> Function()? result}) { return TunnelVnetResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelVnetResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TunnelVnetResponseCollection(result: $result)'; } 
 }
