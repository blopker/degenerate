// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dependency_graph_diff2_vulnerabilities.dart';@immutable final class DependencyGraphDiff2ChangeType {const DependencyGraphDiff2ChangeType._(this.value);

factory DependencyGraphDiff2ChangeType.fromJson(String json) { return switch (json) {
  'added' => added,
  'removed' => removed,
  _ => DependencyGraphDiff2ChangeType._(json),
}; }

static const DependencyGraphDiff2ChangeType added = DependencyGraphDiff2ChangeType._('added');

static const DependencyGraphDiff2ChangeType removed = DependencyGraphDiff2ChangeType._('removed');

static const List<DependencyGraphDiff2ChangeType> values = [added, removed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependencyGraphDiff2ChangeType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependencyGraphDiff2ChangeType($value)'; } 
 }
/// Where the dependency is utilized. `development` means that the dependency is only utilized in the development environment. `runtime` means that the dependency is utilized at runtime and in the development environment.
@immutable final class DependencyGraphDiff2Scope {const DependencyGraphDiff2Scope._(this.value);

factory DependencyGraphDiff2Scope.fromJson(String json) { return switch (json) {
  'unknown' => unknown,
  'runtime' => runtime,
  'development' => development,
  _ => DependencyGraphDiff2Scope._(json),
}; }

static const DependencyGraphDiff2Scope unknown = DependencyGraphDiff2Scope._('unknown');

static const DependencyGraphDiff2Scope runtime = DependencyGraphDiff2Scope._('runtime');

static const DependencyGraphDiff2Scope development = DependencyGraphDiff2Scope._('development');

static const List<DependencyGraphDiff2Scope> values = [unknown, runtime, development];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependencyGraphDiff2Scope && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependencyGraphDiff2Scope($value)'; } 
 }
@immutable final class DependencyGraphDiff2 {const DependencyGraphDiff2({required this.changeType, required this.manifest, required this.ecosystem, required this.name, required this.version, required this.packageUrl, required this.license, required this.sourceRepositoryUrl, required this.vulnerabilities, required this.scope, });

factory DependencyGraphDiff2.fromJson(Map<String, dynamic> json) { return DependencyGraphDiff2(
  changeType: DependencyGraphDiff2ChangeType.fromJson(json['change_type'] as String),
  manifest: json['manifest'] as String,
  ecosystem: json['ecosystem'] as String,
  name: json['name'] as String,
  version: json['version'] as String,
  packageUrl: json['package_url'] as String?,
  license: json['license'] as String?,
  sourceRepositoryUrl: json['source_repository_url'] as String?,
  vulnerabilities: (json['vulnerabilities'] as List<dynamic>).map((e) => DependencyGraphDiff2Vulnerabilities.fromJson(e as Map<String, dynamic>)).toList(),
  scope: DependencyGraphDiff2Scope.fromJson(json['scope'] as String),
); }

final DependencyGraphDiff2ChangeType changeType;

final String manifest;

final String ecosystem;

final String name;

final String version;

final String? packageUrl;

final String? license;

final String? sourceRepositoryUrl;

final List<DependencyGraphDiff2Vulnerabilities> vulnerabilities;

/// Where the dependency is utilized. `development` means that the dependency is only utilized in the development environment. `runtime` means that the dependency is utilized at runtime and in the development environment.
final DependencyGraphDiff2Scope scope;

Map<String, dynamic> toJson() { return {
  'change_type': changeType.toJson(),
  'manifest': manifest,
  'ecosystem': ecosystem,
  'name': name,
  'version': version,
  'package_url': ?packageUrl,
  'license': ?license,
  'source_repository_url': ?sourceRepositoryUrl,
  'vulnerabilities': vulnerabilities.map((e) => e.toJson()).toList(),
  'scope': scope.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('change_type') &&
      json.containsKey('manifest') && json['manifest'] is String &&
      json.containsKey('ecosystem') && json['ecosystem'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('version') && json['version'] is String &&
      json.containsKey('package_url') && json['package_url'] is String &&
      json.containsKey('license') && json['license'] is String &&
      json.containsKey('source_repository_url') && json['source_repository_url'] is String &&
      json.containsKey('vulnerabilities') &&
      json.containsKey('scope'); } 
DependencyGraphDiff2 copyWith({DependencyGraphDiff2ChangeType? changeType, String? manifest, String? ecosystem, String? name, String? version, String? Function()? packageUrl, String? Function()? license, String? Function()? sourceRepositoryUrl, List<DependencyGraphDiff2Vulnerabilities>? vulnerabilities, DependencyGraphDiff2Scope? scope, }) { return DependencyGraphDiff2(
  changeType: changeType ?? this.changeType,
  manifest: manifest ?? this.manifest,
  ecosystem: ecosystem ?? this.ecosystem,
  name: name ?? this.name,
  version: version ?? this.version,
  packageUrl: packageUrl != null ? packageUrl() : this.packageUrl,
  license: license != null ? license() : this.license,
  sourceRepositoryUrl: sourceRepositoryUrl != null ? sourceRepositoryUrl() : this.sourceRepositoryUrl,
  vulnerabilities: vulnerabilities ?? this.vulnerabilities,
  scope: scope ?? this.scope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependencyGraphDiff2 &&
          changeType == other.changeType &&
          manifest == other.manifest &&
          ecosystem == other.ecosystem &&
          name == other.name &&
          version == other.version &&
          packageUrl == other.packageUrl &&
          license == other.license &&
          sourceRepositoryUrl == other.sourceRepositoryUrl &&
          listEquals(vulnerabilities, other.vulnerabilities) &&
          scope == other.scope; } 
@override int get hashCode { return Object.hash(changeType, manifest, ecosystem, name, version, packageUrl, license, sourceRepositoryUrl, Object.hashAll(vulnerabilities), scope); } 
@override String toString() { return 'DependencyGraphDiff2(changeType: $changeType, manifest: $manifest, ecosystem: $ecosystem, name: $name, version: $version, packageUrl: $packageUrl, license: $license, sourceRepositoryUrl: $sourceRepositoryUrl, vulnerabilities: $vulnerabilities, scope: $scope)'; } 
 }
