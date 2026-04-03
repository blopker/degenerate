// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_country_rule_geo.dart';/// Matches a specific country
@immutable final class AccessCountryRule {const AccessCountryRule({required this.geo});

factory AccessCountryRule.fromJson(Map<String, dynamic> json) { return AccessCountryRule(
  geo: AccessCountryRuleGeo.fromJson(json['geo'] as Map<String, dynamic>),
); }

final AccessCountryRuleGeo geo;

Map<String, dynamic> toJson() { return {
  'geo': geo.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('geo'); } 
AccessCountryRule copyWith({AccessCountryRuleGeo? geo}) { return AccessCountryRule(
  geo: geo ?? this.geo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCountryRule &&
          geo == other.geo; } 
@override int get hashCode { return geo.hashCode; } 
@override String toString() { return 'AccessCountryRule(geo: $geo)'; } 
 }
