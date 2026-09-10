// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpUpdateDocumentFingerprint {const DlpUpdateDocumentFingerprint({this.description = const Omittable.absent(), this.matchPercent = const Omittable.absent(), this.name = const Omittable.absent(), });

factory DlpUpdateDocumentFingerprint.fromJson(Map<String, dynamic> json) { return DlpUpdateDocumentFingerprint(
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  matchPercent: json.containsKey('match_percent') ? Omittable(json['match_percent'] != null ? (json['match_percent'] as num).toInt() : null) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> description;

final Omittable<int?> matchPercent;

final Omittable<String?> name;

Map<String, dynamic> toJson() { return {
  if (description.isPresent) 'description': description.value,
  if (matchPercent.isPresent) 'match_percent': matchPercent.value,
  if (name.isPresent) 'name': name.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'match_percent', 'name'}.contains(key)); } 
DlpUpdateDocumentFingerprint copyWith({Omittable<String?>? description, Omittable<int?>? matchPercent, Omittable<String?>? name, }) { return DlpUpdateDocumentFingerprint(
  description: description ?? this.description,
  matchPercent: matchPercent ?? this.matchPercent,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpUpdateDocumentFingerprint &&
          description == other.description &&
          matchPercent == other.matchPercent &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, matchPercent, name); } 
@override String toString() { return 'DlpUpdateDocumentFingerprint(description: $description, matchPercent: $matchPercent, name: $name)'; } 
 }
