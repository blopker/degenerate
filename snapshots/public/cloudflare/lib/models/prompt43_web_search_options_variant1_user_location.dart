// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'prompt43_web_search_options_variant1_user_location_approximate.dart';@immutable final class Prompt43WebSearchOptionsVariant1UserLocationType {const Prompt43WebSearchOptionsVariant1UserLocationType._(this.value);

factory Prompt43WebSearchOptionsVariant1UserLocationType.fromJson(String json) { return switch (json) {
  'approximate' => approximate,
  _ => Prompt43WebSearchOptionsVariant1UserLocationType._(json),
}; }

static const Prompt43WebSearchOptionsVariant1UserLocationType approximate = Prompt43WebSearchOptionsVariant1UserLocationType._('approximate');

static const List<Prompt43WebSearchOptionsVariant1UserLocationType> values = [approximate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt43WebSearchOptionsVariant1UserLocationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt43WebSearchOptionsVariant1UserLocationType($value)'; } 
 }
@immutable final class Prompt43WebSearchOptionsVariant1UserLocation {const Prompt43WebSearchOptionsVariant1UserLocation({required this.approximate, required this.type, });

factory Prompt43WebSearchOptionsVariant1UserLocation.fromJson(Map<String, dynamic> json) { return Prompt43WebSearchOptionsVariant1UserLocation(
  approximate: Prompt43WebSearchOptionsVariant1UserLocationApproximate.fromJson(json['approximate'] as Map<String, dynamic>),
  type: Prompt43WebSearchOptionsVariant1UserLocationType.fromJson(json['type'] as String),
); }

final Prompt43WebSearchOptionsVariant1UserLocationApproximate approximate;

final Prompt43WebSearchOptionsVariant1UserLocationType type;

Map<String, dynamic> toJson() { return {
  'approximate': approximate.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('approximate') &&
      json.containsKey('type'); } 
Prompt43WebSearchOptionsVariant1UserLocation copyWith({Prompt43WebSearchOptionsVariant1UserLocationApproximate? approximate, Prompt43WebSearchOptionsVariant1UserLocationType? type, }) { return Prompt43WebSearchOptionsVariant1UserLocation(
  approximate: approximate ?? this.approximate,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43WebSearchOptionsVariant1UserLocation &&
          approximate == other.approximate &&
          type == other.type; } 
@override int get hashCode { return Object.hash(approximate, type); } 
@override String toString() { return 'Prompt43WebSearchOptionsVariant1UserLocation(approximate: $approximate, type: $type)'; } 
 }
