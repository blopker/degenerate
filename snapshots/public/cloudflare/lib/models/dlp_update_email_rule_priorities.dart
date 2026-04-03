// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Used to update multiple email rule priorities as an atomic action,
/// to support patterns such as swapping the priorities of two email rules.
@immutable final class DlpUpdateEmailRulePriorities {const DlpUpdateEmailRulePriorities({required this.newPriorities});

factory DlpUpdateEmailRulePriorities.fromJson(Map<String, dynamic> json) { return DlpUpdateEmailRulePriorities(
  newPriorities: (json['new_priorities'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as num).toInt())),
); }

final Map<String,int> newPriorities;

Map<String, dynamic> toJson() { return {
  'new_priorities': newPriorities,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('new_priorities'); } 
DlpUpdateEmailRulePriorities copyWith({Map<String,int>? newPriorities}) { return DlpUpdateEmailRulePriorities(
  newPriorities: newPriorities ?? this.newPriorities,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpUpdateEmailRulePriorities &&
          newPriorities == other.newPriorities; } 
@override int get hashCode { return newPriorities.hashCode; } 
@override String toString() { return 'DlpUpdateEmailRulePriorities(newPriorities: $newPriorities)'; } 
 }
