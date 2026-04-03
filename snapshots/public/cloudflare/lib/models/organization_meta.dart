// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'organization_flags.dart';@immutable final class OrganizationMeta {const OrganizationMeta({this.flags, this.managedBy, this.additionalProperties = const {}, });

factory OrganizationMeta.fromJson(Map<String, dynamic> json) { return OrganizationMeta(
  flags: json['flags'] != null ? OrganizationFlags.fromJson(json['flags'] as Map<String, dynamic>) : null,
  managedBy: json['managed_by'] as String?,
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'flags', 'managed_by'}.contains(e.key)).map((e) => MapEntry(e.key, e.value as Map<String, dynamic>))),
); }

final OrganizationFlags? flags;

final String? managedBy;

final Map<String,Map<String,dynamic>> additionalProperties;

Map<String, dynamic> toJson() { return {
  if (flags != null) 'flags': flags?.toJson(),
  'managed_by': ?managedBy,
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'flags', 'managed_by'}.contains(key)); } 
OrganizationMeta copyWith({OrganizationFlags Function()? flags, String Function()? managedBy, Map<String, Map<String, dynamic>>? additionalProperties, }) { return OrganizationMeta(
  flags: flags != null ? flags() : this.flags,
  managedBy: managedBy != null ? managedBy() : this.managedBy,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrganizationMeta &&
          flags == other.flags &&
          managedBy == other.managedBy &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(flags, managedBy, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'OrganizationMeta(flags: $flags, managedBy: $managedBy, additionalProperties: $additionalProperties)'; } 
 }
