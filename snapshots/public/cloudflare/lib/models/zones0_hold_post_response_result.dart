// GENERATED CODE - DO NOT MODIFY BY HAND

final class Zones0HoldPostResponseResult {const Zones0HoldPostResponseResult({this.hold, this.holdAfter, this.includeSubdomains, });

factory Zones0HoldPostResponseResult.fromJson(Map<String, dynamic> json) { return Zones0HoldPostResponseResult(
  hold: json['hold'] as bool?,
  holdAfter: json['hold_after'] as String?,
  includeSubdomains: json['include_subdomains'] as String?,
); }

final bool? hold;

final String? holdAfter;

final String? includeSubdomains;

Map<String, dynamic> toJson() { return {
  'hold': ?hold,
  'hold_after': ?holdAfter,
  'include_subdomains': ?includeSubdomains,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'hold', 'hold_after', 'include_subdomains'}.contains(key)); } 
Zones0HoldPostResponseResult copyWith({bool Function()? hold, String Function()? holdAfter, String Function()? includeSubdomains, }) { return Zones0HoldPostResponseResult(
  hold: hold != null ? hold() : this.hold,
  holdAfter: holdAfter != null ? holdAfter() : this.holdAfter,
  includeSubdomains: includeSubdomains != null ? includeSubdomains() : this.includeSubdomains,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Zones0HoldPostResponseResult &&
          hold == other.hold &&
          holdAfter == other.holdAfter &&
          includeSubdomains == other.includeSubdomains; } 
@override int get hashCode { return Object.hash(hold, holdAfter, includeSubdomains); } 
@override String toString() { return 'Zones0HoldPostResponseResult(hold: $hold, holdAfter: $holdAfter, includeSubdomains: $includeSubdomains)'; } 
 }
