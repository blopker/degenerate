// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dependabot_alert_package.dart';/// The execution scope of the vulnerable dependency.
@immutable final class DependabotAlertWithRepositoryDependencyScope {const DependabotAlertWithRepositoryDependencyScope._(this.value);

factory DependabotAlertWithRepositoryDependencyScope.fromJson(String json) { return switch (json) {
  'development' => development,
  'runtime' => runtime,
  'null' => $null,
  _ => DependabotAlertWithRepositoryDependencyScope._(json),
}; }

static const DependabotAlertWithRepositoryDependencyScope development = DependabotAlertWithRepositoryDependencyScope._('development');

static const DependabotAlertWithRepositoryDependencyScope runtime = DependabotAlertWithRepositoryDependencyScope._('runtime');

static const DependabotAlertWithRepositoryDependencyScope $null = DependabotAlertWithRepositoryDependencyScope._('null');

static const List<DependabotAlertWithRepositoryDependencyScope> values = [development, runtime, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotAlertWithRepositoryDependencyScope && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependabotAlertWithRepositoryDependencyScope($value)'; } 
 }
/// The vulnerable dependency's relationship to your project.
/// 
/// > `[!NOTE]`
/// > We are rolling out support for dependency relationship across ecosystems. This value will be "unknown" for all dependencies in unsupported ecosystems.
/// 
@immutable final class DependabotAlertWithRepositoryDependencyRelationship {const DependabotAlertWithRepositoryDependencyRelationship._(this.value);

factory DependabotAlertWithRepositoryDependencyRelationship.fromJson(String json) { return switch (json) {
  'unknown' => unknown,
  'direct' => direct,
  'transitive' => transitive,
  'null' => $null,
  _ => DependabotAlertWithRepositoryDependencyRelationship._(json),
}; }

static const DependabotAlertWithRepositoryDependencyRelationship unknown = DependabotAlertWithRepositoryDependencyRelationship._('unknown');

static const DependabotAlertWithRepositoryDependencyRelationship direct = DependabotAlertWithRepositoryDependencyRelationship._('direct');

static const DependabotAlertWithRepositoryDependencyRelationship transitive = DependabotAlertWithRepositoryDependencyRelationship._('transitive');

static const DependabotAlertWithRepositoryDependencyRelationship $null = DependabotAlertWithRepositoryDependencyRelationship._('null');

static const List<DependabotAlertWithRepositoryDependencyRelationship> values = [unknown, direct, transitive, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotAlertWithRepositoryDependencyRelationship && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependabotAlertWithRepositoryDependencyRelationship($value)'; } 
 }
/// Details for the vulnerable dependency.
@immutable final class DependabotAlertWithRepositoryDependency {const DependabotAlertWithRepositoryDependency({this.package, this.manifestPath, this.scope, this.relationship, });

factory DependabotAlertWithRepositoryDependency.fromJson(Map<String, dynamic> json) { return DependabotAlertWithRepositoryDependency(
  package: json['package'] != null ? DependabotAlertPackage.fromJson(json['package'] as Map<String, dynamic>) : null,
  manifestPath: json['manifest_path'] as String?,
  scope: json['scope'] != null ? DependabotAlertWithRepositoryDependencyScope.fromJson(json['scope'] as String) : null,
  relationship: json['relationship'] != null ? DependabotAlertWithRepositoryDependencyRelationship.fromJson(json['relationship'] as String) : null,
); }

final DependabotAlertPackage? package;

/// The full path to the dependency manifest file, relative to the root of the repository.
final String? manifestPath;

/// The execution scope of the vulnerable dependency.
final DependabotAlertWithRepositoryDependencyScope? scope;

/// The vulnerable dependency's relationship to your project.
/// 
/// > `[!NOTE]`
/// > We are rolling out support for dependency relationship across ecosystems. This value will be "unknown" for all dependencies in unsupported ecosystems.
/// 
final DependabotAlertWithRepositoryDependencyRelationship? relationship;

Map<String, dynamic> toJson() { return {
  if (package != null) 'package': package?.toJson(),
  'manifest_path': ?manifestPath,
  if (scope != null) 'scope': scope?.toJson(),
  if (relationship != null) 'relationship': relationship?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'package', 'manifest_path', 'scope', 'relationship'}.contains(key)); } 
DependabotAlertWithRepositoryDependency copyWith({DependabotAlertPackage Function()? package, String Function()? manifestPath, DependabotAlertWithRepositoryDependencyScope? Function()? scope, DependabotAlertWithRepositoryDependencyRelationship? Function()? relationship, }) { return DependabotAlertWithRepositoryDependency(
  package: package != null ? package() : this.package,
  manifestPath: manifestPath != null ? manifestPath() : this.manifestPath,
  scope: scope != null ? scope() : this.scope,
  relationship: relationship != null ? relationship() : this.relationship,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependabotAlertWithRepositoryDependency &&
          package == other.package &&
          manifestPath == other.manifestPath &&
          scope == other.scope &&
          relationship == other.relationship; } 
@override int get hashCode { return Object.hash(package, manifestPath, scope, relationship); } 
@override String toString() { return 'DependabotAlertWithRepositoryDependency(package: $package, manifestPath: $manifestPath, scope: $scope, relationship: $relationship)'; } 
 }
