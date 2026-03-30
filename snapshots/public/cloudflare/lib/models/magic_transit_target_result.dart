// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_transit_colo_result.dart';/// The target hostname, IPv6, or IPv6 address.
extension type const MagicTransitTarget(String value) {
factory MagicTransitTarget.fromJson(String json) => MagicTransitTarget(json);

String toJson() => value;

}
final class MagicTransitTargetResult {const MagicTransitTargetResult({this.colos, this.target, });

factory MagicTransitTargetResult.fromJson(Map<String, dynamic> json) { return MagicTransitTargetResult(
  colos: (json['colos'] as List<dynamic>?)?.map((e) => MagicTransitColoResult.fromJson(e as Map<String, dynamic>)).toList(),
  target: json['target'] != null ? MagicTransitTarget.fromJson(json['target'] as String) : null,
); }

final List<MagicTransitColoResult>? colos;

/// The target hostname, IPv6, or IPv6 address.
final MagicTransitTarget? target;

Map<String, dynamic> toJson() { return {
  if (colos != null) 'colos': colos?.map((e) => e.toJson()).toList(),
  if (target != null) 'target': target?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'colos', 'target'}.contains(key)); } 
MagicTransitTargetResult copyWith({List<MagicTransitColoResult> Function()? colos, MagicTransitTarget Function()? target, }) { return MagicTransitTargetResult(
  colos: colos != null ? colos() : this.colos,
  target: target != null ? target() : this.target,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTransitTargetResult &&
          listEquals(colos, other.colos) &&
          target == other.target; } 
@override int get hashCode { return Object.hash(Object.hashAll(colos ?? const []), target); } 
@override String toString() { return 'MagicTransitTargetResult(colos: $colos, target: $target)'; } 
 }
