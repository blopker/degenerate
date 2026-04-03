// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpDatasetsUpdateRequest {const DlpDatasetsUpdateRequest({this.caseSensitive, this.description, this.name, });

factory DlpDatasetsUpdateRequest.fromJson(Map<String, dynamic> json) { return DlpDatasetsUpdateRequest(
  caseSensitive: json['case_sensitive'] as bool?,
  description: json['description'] as String?,
  name: json['name'] as String?,
); }

/// Determines if the words should be matched in a case-sensitive manner.
/// 
/// Only required for custom word lists.
final bool? caseSensitive;

/// The description of the dataset.
final String? description;

/// The name of the dataset, must be unique.
final String? name;

Map<String, dynamic> toJson() { return {
  'case_sensitive': ?caseSensitive,
  'description': ?description,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'case_sensitive', 'description', 'name'}.contains(key)); } 
DlpDatasetsUpdateRequest copyWith({bool Function()? caseSensitive, String? Function()? description, String? Function()? name, }) { return DlpDatasetsUpdateRequest(
  caseSensitive: caseSensitive != null ? caseSensitive() : this.caseSensitive,
  description: description != null ? description() : this.description,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDatasetsUpdateRequest &&
          caseSensitive == other.caseSensitive &&
          description == other.description &&
          name == other.name; } 
@override int get hashCode { return Object.hash(caseSensitive, description, name); } 
@override String toString() { return 'DlpDatasetsUpdateRequest(caseSensitive: $caseSensitive, description: $description, name: $name)'; } 
 }
