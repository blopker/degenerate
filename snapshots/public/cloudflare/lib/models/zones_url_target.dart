// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_url_target_constraint.dart';/// URL target.
@immutable final class ZonesUrlTarget {const ZonesUrlTarget({this.constraint, this.target = const Omittable.absent(), });

factory ZonesUrlTarget.fromJson(Map<String, dynamic> json) { return ZonesUrlTarget(
  constraint: json['constraint'] != null ? ZonesUrlTargetConstraint.fromJson(json['constraint'] as Map<String, dynamic>) : null,
  target: json.containsKey('target') ? Omittable(json['target']) : const Omittable.absent(),
); }

/// The constraint of a target.
final ZonesUrlTargetConstraint? constraint;

/// A target based on the URL of the request.
final Omittable<dynamic> target;

Map<String, dynamic> toJson() { return {
  if (constraint != null) 'constraint': constraint?.toJson(),
  if (target.isPresent) 'target': target.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'constraint', 'target'}.contains(key)); } 
ZonesUrlTarget copyWith({ZonesUrlTargetConstraint? Function()? constraint, Omittable<dynamic>? target, }) { return ZonesUrlTarget(
  constraint: constraint != null ? constraint() : this.constraint,
  target: target ?? this.target,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesUrlTarget &&
          constraint == other.constraint &&
          target == other.target; } 
@override int get hashCode { return Object.hash(constraint, target); } 
@override String toString() { return 'ZonesUrlTarget(constraint: $constraint, target: $target)'; } 
 }
