// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Define an expression to search using full-text search.
@immutable final class WorkersObservabilityQueryParametersNeedle {const WorkersObservabilityQueryParametersNeedle({required this.value, this.isRegex, this.matchCase, });

factory WorkersObservabilityQueryParametersNeedle.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryParametersNeedle(
  isRegex: json['isRegex'] as bool?,
  matchCase: json['matchCase'] as bool?,
  value: json['value'],
); }

final bool? isRegex;

final bool? matchCase;

/// One of: String, double, bool
final dynamic value;

Map<String, dynamic> toJson() { return {
  'isRegex': ?isRegex,
  'matchCase': ?matchCase,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
WorkersObservabilityQueryParametersNeedle copyWith({bool Function()? isRegex, bool Function()? matchCase, dynamic value, }) { return WorkersObservabilityQueryParametersNeedle(
  isRegex: isRegex != null ? isRegex() : this.isRegex,
  matchCase: matchCase != null ? matchCase() : this.matchCase,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryParametersNeedle &&
          isRegex == other.isRegex &&
          matchCase == other.matchCase &&
          value == other.value; } 
@override int get hashCode { return Object.hash(isRegex, matchCase, value); } 
@override String toString() { return 'WorkersObservabilityQueryParametersNeedle(isRegex: $isRegex, matchCase: $matchCase, value: $value)'; } 
 }
