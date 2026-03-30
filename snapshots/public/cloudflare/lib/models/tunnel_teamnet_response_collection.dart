// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_teamnet.dart';final class TunnelTeamnetResponseCollection {const TunnelTeamnetResponseCollection({this.result});

factory TunnelTeamnetResponseCollection.fromJson(Map<String, dynamic> json) { return TunnelTeamnetResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TunnelTeamnet.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TunnelTeamnet>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelTeamnetResponseCollection copyWith({List<TunnelTeamnet> Function()? result}) { return TunnelTeamnetResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelTeamnetResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TunnelTeamnetResponseCollection(result: $result)'; } 
 }
