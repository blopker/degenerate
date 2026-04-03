// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Search for a specific substring in any of the events
@immutable final class TelemetryKeysListRequestNeedle {const TelemetryKeysListRequestNeedle({required this.value, this.isRegex, this.matchCase, });

factory TelemetryKeysListRequestNeedle.fromJson(Map<String, dynamic> json) { return TelemetryKeysListRequestNeedle(
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
TelemetryKeysListRequestNeedle copyWith({bool Function()? isRegex, bool Function()? matchCase, dynamic value, }) { return TelemetryKeysListRequestNeedle(
  isRegex: isRegex != null ? isRegex() : this.isRegex,
  matchCase: matchCase != null ? matchCase() : this.matchCase,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryKeysListRequestNeedle &&
          isRegex == other.isRegex &&
          matchCase == other.matchCase &&
          value == other.value; } 
@override int get hashCode { return Object.hash(isRegex, matchCase, value); } 
@override String toString() { return 'TelemetryKeysListRequestNeedle(isRegex: $isRegex, matchCase: $matchCase, value: $value)'; } 
 }
