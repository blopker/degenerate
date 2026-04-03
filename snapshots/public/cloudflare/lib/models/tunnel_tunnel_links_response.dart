// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_tunnel_link.dart';@immutable final class TunnelTunnelLinksResponse {const TunnelTunnelLinksResponse({this.result});

factory TunnelTunnelLinksResponse.fromJson(Map<String, dynamic> json) { return TunnelTunnelLinksResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => TunnelTunnelLink.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TunnelTunnelLink>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelTunnelLinksResponse copyWith({List<TunnelTunnelLink> Function()? result}) { return TunnelTunnelLinksResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelTunnelLinksResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TunnelTunnelLinksResponse(result: $result)'; } 
 }
