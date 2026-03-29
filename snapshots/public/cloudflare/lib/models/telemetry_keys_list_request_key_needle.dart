// GENERATED CODE - DO NOT MODIFY BY HAND

/// Search for a specific substring in the keys.
final class TelemetryKeysListRequestKeyNeedle {const TelemetryKeysListRequestKeyNeedle({this.isRegex, this.matchCase, required this.value, });

factory TelemetryKeysListRequestKeyNeedle.fromJson(Map<String, dynamic> json) { return TelemetryKeysListRequestKeyNeedle(
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
TelemetryKeysListRequestKeyNeedle copyWith({bool Function()? isRegex, bool Function()? matchCase, dynamic value, }) { return TelemetryKeysListRequestKeyNeedle(
  isRegex: isRegex != null ? isRegex() : this.isRegex,
  matchCase: matchCase != null ? matchCase() : this.matchCase,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryKeysListRequestKeyNeedle &&
          isRegex == other.isRegex &&
          matchCase == other.matchCase &&
          value == other.value; } 
@override int get hashCode { return Object.hash(isRegex, matchCase, value); } 
@override String toString() { return 'TelemetryKeysListRequestKeyNeedle(isRegex: $isRegex, matchCase: $matchCase, value: $value)'; } 
 }
