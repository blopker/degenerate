// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_route_origin.dart';import 'rulesets_route_sni.dart';/// A value to rewrite the HTTP host header to.
extension type const RulesetsRouteHostHeader(String value) {
factory RulesetsRouteHostHeader.fromJson(String json) => RulesetsRouteHostHeader(json);

String toJson() => value;

}
@immutable final class RulesetsRouteRuleActionParameters {const RulesetsRouteRuleActionParameters({this.hostHeader, this.origin, this.sni, });

factory RulesetsRouteRuleActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsRouteRuleActionParameters(
  hostHeader: json['host_header'] != null ? RulesetsRouteHostHeader.fromJson(json['host_header'] as String) : null,
  origin: json['origin'] != null ? RulesetsRouteOrigin.fromJson(json['origin'] as Map<String, dynamic>) : null,
  sni: json['sni'] != null ? RulesetsRouteSni.fromJson(json['sni'] as Map<String, dynamic>) : null,
); }

/// A value to rewrite the HTTP host header to.
final RulesetsRouteHostHeader? hostHeader;

final RulesetsRouteOrigin? origin;

final RulesetsRouteSni? sni;

Map<String, dynamic> toJson() { return {
  if (hostHeader != null) 'host_header': hostHeader?.toJson(),
  if (origin != null) 'origin': origin?.toJson(),
  if (sni != null) 'sni': sni?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'host_header', 'origin', 'sni'}.contains(key)); } 
RulesetsRouteRuleActionParameters copyWith({RulesetsRouteHostHeader? Function()? hostHeader, RulesetsRouteOrigin? Function()? origin, RulesetsRouteSni? Function()? sni, }) { return RulesetsRouteRuleActionParameters(
  hostHeader: hostHeader != null ? hostHeader() : this.hostHeader,
  origin: origin != null ? origin() : this.origin,
  sni: sni != null ? sni() : this.sni,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsRouteRuleActionParameters &&
          hostHeader == other.hostHeader &&
          origin == other.origin &&
          sni == other.sni; } 
@override int get hashCode { return Object.hash(hostHeader, origin, sni); } 
@override String toString() { return 'RulesetsRouteRuleActionParameters(hostHeader: $hostHeader, origin: $origin, sni: $sni)'; } 
 }
