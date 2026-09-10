// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpDatasetUpdate {const DlpDatasetUpdate({this.caseSensitive, this.description = const Omittable.absent(), this.name = const Omittable.absent(), });

factory DlpDatasetUpdate.fromJson(Map<String, dynamic> json) { return DlpDatasetUpdate(
  caseSensitive: json['case_sensitive'] as bool?,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
); }

/// Determines if the words should be matched in a case-sensitive manner.
/// 
/// Only required for custom word lists.
final bool? caseSensitive;

/// The description of the dataset.
final Omittable<String?> description;

/// The name of the dataset, must be unique.
final Omittable<String?> name;

Map<String, dynamic> toJson() { return {
  'case_sensitive': ?caseSensitive,
  if (description.isPresent) 'description': description.value,
  if (name.isPresent) 'name': name.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'case_sensitive', 'description', 'name'}.contains(key)); } 
DlpDatasetUpdate copyWith({bool? Function()? caseSensitive, Omittable<String?>? description, Omittable<String?>? name, }) { return DlpDatasetUpdate(
  caseSensitive: caseSensitive != null ? caseSensitive() : this.caseSensitive,
  description: description ?? this.description,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDatasetUpdate &&
          caseSensitive == other.caseSensitive &&
          description == other.description &&
          name == other.name; } 
@override int get hashCode { return Object.hash(caseSensitive, description, name); } 
@override String toString() { return 'DlpDatasetUpdate(caseSensitive: $caseSensitive, description: $description, name: $name)'; } 
 }
