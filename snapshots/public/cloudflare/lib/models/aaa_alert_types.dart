// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Describes the alert type.
extension type const AaaDescription(String value) {
factory AaaDescription.fromJson(String json) => AaaDescription(json);

String toJson() => value;

}
/// Alert type name.
extension type const AaaDisplayName(String value) {
factory AaaDisplayName.fromJson(String json) => AaaDisplayName(json);

String toJson() => value;

}
/// Use this value when creating and updating a notification policy.
extension type const AaaType(String value) {
factory AaaType.fromJson(String json) => AaaType(json);

String toJson() => value;

}
@immutable final class AaaAlertTypes {const AaaAlertTypes({this.description, this.displayName, this.filterOptions, this.type, });

factory AaaAlertTypes.fromJson(Map<String, dynamic> json) { return AaaAlertTypes(
  description: json['description'] != null ? AaaDescription.fromJson(json['description'] as String) : null,
  displayName: json['display_name'] != null ? AaaDisplayName.fromJson(json['display_name'] as String) : null,
  filterOptions: (json['filter_options'] as List<dynamic>?)?.map((e) => e).toList(),
  type: json['type'] != null ? AaaType.fromJson(json['type'] as String) : null,
); }

final AaaDescription? description;

final AaaDisplayName? displayName;

final List<dynamic>? filterOptions;

final AaaType? type;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (displayName != null) 'display_name': displayName?.toJson(),
  'filter_options': ?filterOptions,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'display_name', 'filter_options', 'type'}.contains(key)); } 
AaaAlertTypes copyWith({AaaDescription Function()? description, AaaDisplayName Function()? displayName, List<dynamic> Function()? filterOptions, AaaType Function()? type, }) { return AaaAlertTypes(
  description: description != null ? description() : this.description,
  displayName: displayName != null ? displayName() : this.displayName,
  filterOptions: filterOptions != null ? filterOptions() : this.filterOptions,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaAlertTypes &&
          description == other.description &&
          displayName == other.displayName &&
          listEquals(filterOptions, other.filterOptions) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(description, displayName, Object.hashAll(filterOptions ?? const []), type); } 
@override String toString() { return 'AaaAlertTypes(description: $description, displayName: $displayName, filterOptions: $filterOptions, type: $type)'; } 
 }
