// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_hostname_route.dart';final class TunnelHostnameRouteResponseCollection {const TunnelHostnameRouteResponseCollection({this.result});

factory TunnelHostnameRouteResponseCollection.fromJson(Map<String, dynamic> json) { return TunnelHostnameRouteResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TunnelHostnameRoute.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TunnelHostnameRoute>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TunnelHostnameRouteResponseCollection copyWith({List<TunnelHostnameRoute> Function()? result}) { return TunnelHostnameRouteResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelHostnameRouteResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TunnelHostnameRouteResponseCollection(result: $result)'; } 
 }
