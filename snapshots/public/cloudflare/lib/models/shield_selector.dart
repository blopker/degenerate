// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_selector_exclude.dart';import 'shield_selector_include.dart';/// Select operations covered by this rule.
/// 
/// For details on selectors, see the [Cloudflare Docs](https://developers.cloudflare.com/api-shield/security/jwt-validation/).
/// 
@immutable final class ShieldSelector {const ShieldSelector({this.exclude = const Omittable.absent(), this.include = const Omittable.absent(), });

factory ShieldSelector.fromJson(Map<String, dynamic> json) { return ShieldSelector(
  exclude: json.containsKey('exclude') ? Omittable((json['exclude'] as List<dynamic>?)?.map((e) => ShieldSelectorExclude.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  include: json.containsKey('include') ? Omittable((json['include'] as List<dynamic>?)?.map((e) => ShieldSelectorInclude.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
); }

/// Ignore operations that were otherwise included by `include`.
final Omittable<List<ShieldSelectorExclude>?> exclude;

/// Select all matching operations.
final Omittable<List<ShieldSelectorInclude>?> include;

Map<String, dynamic> toJson() { return {
  if (exclude.isPresent) 'exclude': exclude.value?.map((e) => e.toJson()).toList(),
  if (include.isPresent) 'include': include.value?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'exclude', 'include'}.contains(key)); } 
ShieldSelector copyWith({Omittable<List<ShieldSelectorExclude>?>? exclude, Omittable<List<ShieldSelectorInclude>?>? include, }) { return ShieldSelector(
  exclude: exclude ?? this.exclude,
  include: include ?? this.include,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSelector &&
          exclude.isPresent == other.exclude.isPresent &&
          listEquals(exclude.value, other.exclude.value) &&
          include.isPresent == other.include.isPresent &&
          listEquals(include.value, other.include.value); } 
@override int get hashCode { return Object.hash(Object.hashAll(exclude.value ?? const []), Object.hashAll(include.value ?? const [])); } 
@override String toString() { return 'ShieldSelector(exclude: $exclude, include: $include)'; } 
 }
