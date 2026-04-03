// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'simple_repository.dart';/// The default repository access level for Dependabot updates.
@immutable final class DependabotRepositoryAccessDetailsDefaultLevel {const DependabotRepositoryAccessDetailsDefaultLevel._(this.value);

factory DependabotRepositoryAccessDetailsDefaultLevel.fromJson(String json) { return switch (json) {
  'public' => public,
  'internal' => internal,
  'null' => $null,
  _ => DependabotRepositoryAccessDetailsDefaultLevel._(json),
}; }

static const DependabotRepositoryAccessDetailsDefaultLevel public = DependabotRepositoryAccessDetailsDefaultLevel._('public');

static const DependabotRepositoryAccessDetailsDefaultLevel internal = DependabotRepositoryAccessDetailsDefaultLevel._('internal');

static const DependabotRepositoryAccessDetailsDefaultLevel $null = DependabotRepositoryAccessDetailsDefaultLevel._('null');

static const List<DependabotRepositoryAccessDetailsDefaultLevel> values = [public, internal, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotRepositoryAccessDetailsDefaultLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependabotRepositoryAccessDetailsDefaultLevel($value)'; } 
 }
/// Information about repositories that Dependabot is able to access in an organization
@immutable final class DependabotRepositoryAccessDetails {const DependabotRepositoryAccessDetails({this.defaultLevel, this.accessibleRepositories, });

factory DependabotRepositoryAccessDetails.fromJson(Map<String, dynamic> json) { return DependabotRepositoryAccessDetails(
  defaultLevel: json['default_level'] != null ? DependabotRepositoryAccessDetailsDefaultLevel.fromJson(json['default_level'] as String) : null,
  accessibleRepositories: (json['accessible_repositories'] as List<dynamic>?)?.map((e) => SimpleRepository.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The default repository access level for Dependabot updates.
final DependabotRepositoryAccessDetailsDefaultLevel? defaultLevel;

final List<SimpleRepository?>? accessibleRepositories;

Map<String, dynamic> toJson() { return {
  if (defaultLevel != null) 'default_level': defaultLevel?.toJson(),
  if (accessibleRepositories != null) 'accessible_repositories': accessibleRepositories?.map((e) => e?.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_level', 'accessible_repositories'}.contains(key)); } 
DependabotRepositoryAccessDetails copyWith({DependabotRepositoryAccessDetailsDefaultLevel? Function()? defaultLevel, List<SimpleRepository> Function()? accessibleRepositories, }) { return DependabotRepositoryAccessDetails(
  defaultLevel: defaultLevel != null ? defaultLevel() : this.defaultLevel,
  accessibleRepositories: accessibleRepositories != null ? accessibleRepositories() : this.accessibleRepositories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependabotRepositoryAccessDetails &&
          defaultLevel == other.defaultLevel &&
          listEquals(accessibleRepositories, other.accessibleRepositories); } 
@override int get hashCode { return Object.hash(defaultLevel, Object.hashAll(accessibleRepositories ?? const [])); } 
@override String toString() { return 'DependabotRepositoryAccessDetails(defaultLevel: $defaultLevel, accessibleRepositories: $accessibleRepositories)'; } 
 }
