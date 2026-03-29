// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
final class AccountRequirementsAlternative {const AccountRequirementsAlternative({required this.alternativeFieldsDue, required this.originalFieldsDue, });

factory AccountRequirementsAlternative.fromJson(Map<String, dynamic> json) { return AccountRequirementsAlternative(
  alternativeFieldsDue: (json['alternative_fields_due'] as List<dynamic>).map((e) => e as String).toList(),
  originalFieldsDue: (json['original_fields_due'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// Fields that can be provided to resolve all fields in `original_fields_due`.
final List<String> alternativeFieldsDue;

/// Fields that are due and can be resolved by providing all fields in `alternative_fields_due`.
final List<String> originalFieldsDue;

Map<String, dynamic> toJson() { return {
  'alternative_fields_due': alternativeFieldsDue,
  'original_fields_due': originalFieldsDue,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('alternative_fields_due') &&
      json.containsKey('original_fields_due'); } 
AccountRequirementsAlternative copyWith({List<String>? alternativeFieldsDue, List<String>? originalFieldsDue, }) { return AccountRequirementsAlternative(
  alternativeFieldsDue: alternativeFieldsDue ?? this.alternativeFieldsDue,
  originalFieldsDue: originalFieldsDue ?? this.originalFieldsDue,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountRequirementsAlternative &&
          listEquals(alternativeFieldsDue, other.alternativeFieldsDue) &&
          listEquals(originalFieldsDue, other.originalFieldsDue); } 
@override int get hashCode { return Object.hash(Object.hashAll(alternativeFieldsDue), Object.hashAll(originalFieldsDue)); } 
@override String toString() { return 'AccountRequirementsAlternative(alternativeFieldsDue: $alternativeFieldsDue, originalFieldsDue: $originalFieldsDue)'; } 
 }
