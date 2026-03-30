// GENERATED CODE - DO NOT MODIFY BY HAND

final class Zones0HoldGetResponseResult {const Zones0HoldGetResponseResult({this.hold, this.holdAfter, this.includeSubdomains, });

factory Zones0HoldGetResponseResult.fromJson(Map<String, dynamic> json) { return Zones0HoldGetResponseResult(
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
Zones0HoldGetResponseResult copyWith({bool Function()? hold, String Function()? holdAfter, String Function()? includeSubdomains, }) { return Zones0HoldGetResponseResult(
  hold: hold != null ? hold() : this.hold,
  holdAfter: holdAfter != null ? holdAfter() : this.holdAfter,
  includeSubdomains: includeSubdomains != null ? includeSubdomains() : this.includeSubdomains,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Zones0HoldGetResponseResult &&
          hold == other.hold &&
          holdAfter == other.holdAfter &&
          includeSubdomains == other.includeSubdomains; } 
@override int get hashCode { return Object.hash(hold, holdAfter, includeSubdomains); } 
@override String toString() { return 'Zones0HoldGetResponseResult(hold: $hold, holdAfter: $holdAfter, includeSubdomains: $includeSubdomains)'; } 
 }
