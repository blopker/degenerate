// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_selector_exclude.dart';import 'shield_selector_include.dart';/// Select operations covered by this rule.
/// 
/// For details on selectors, see the [Cloudflare Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
/// 
@immutable final class ShieldSelector {const ShieldSelector({this.exclude, this.include, });

factory ShieldSelector.fromJson(Map<String, dynamic> json) { return ShieldSelector(
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => ShieldSelectorExclude.fromJson(e as Map<String, dynamic>)).toList(),
  include: (json['include'] as List<dynamic>?)?.map((e) => ShieldSelectorInclude.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Ignore operations that were otherwise included by `include`.
final List<ShieldSelectorExclude>? exclude;

/// Select all matching operations.
final List<ShieldSelectorInclude>? include;

Map<String, dynamic> toJson() { return {
  if (exclude != null) 'exclude': exclude?.map((e) => e.toJson()).toList(),
  if (include != null) 'include': include?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'exclude', 'include'}.contains(key)); } 
ShieldSelector copyWith({List<ShieldSelectorExclude>? Function()? exclude, List<ShieldSelectorInclude>? Function()? include, }) { return ShieldSelector(
  exclude: exclude != null ? exclude() : this.exclude,
  include: include != null ? include() : this.include,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSelector &&
          listEquals(exclude, other.exclude) &&
          listEquals(include, other.include); } 
@override int get hashCode { return Object.hash(Object.hashAll(exclude ?? const []), Object.hashAll(include ?? const [])); } 
@override String toString() { return 'ShieldSelector(exclude: $exclude, include: $include)'; } 
 }
