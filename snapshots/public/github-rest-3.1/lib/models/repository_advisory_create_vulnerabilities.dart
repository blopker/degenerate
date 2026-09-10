// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_advisory_create_vulnerabilities_package.dart';@immutable final class RepositoryAdvisoryCreateVulnerabilities {const RepositoryAdvisoryCreateVulnerabilities({required this.package, this.vulnerableVersionRange = const Omittable.absent(), this.patchedVersions = const Omittable.absent(), this.vulnerableFunctions = const Omittable.absent(), });

factory RepositoryAdvisoryCreateVulnerabilities.fromJson(Map<String, dynamic> json) { return RepositoryAdvisoryCreateVulnerabilities(
  package: RepositoryAdvisoryCreateVulnerabilitiesPackage.fromJson(json['package'] as Map<String, dynamic>),
  vulnerableVersionRange: json.containsKey('vulnerable_version_range') ? Omittable(json['vulnerable_version_range'] as String?) : const Omittable.absent(),
  patchedVersions: json.containsKey('patched_versions') ? Omittable(json['patched_versions'] as String?) : const Omittable.absent(),
  vulnerableFunctions: json.containsKey('vulnerable_functions') ? Omittable((json['vulnerable_functions'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

/// The name of the package affected by the vulnerability.
final RepositoryAdvisoryCreateVulnerabilitiesPackage package;

/// The range of the package versions affected by the vulnerability.
final Omittable<String?> vulnerableVersionRange;

/// The package version(s) that resolve the vulnerability.
final Omittable<String?> patchedVersions;

/// The functions in the package that are affected.
final Omittable<List<String>?> vulnerableFunctions;

Map<String, dynamic> toJson() { return {
  'package': package.toJson(),
  if (vulnerableVersionRange.isPresent) 'vulnerable_version_range': vulnerableVersionRange.value,
  if (patchedVersions.isPresent) 'patched_versions': patchedVersions.value,
  if (vulnerableFunctions.isPresent) 'vulnerable_functions': vulnerableFunctions.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('package'); } 
RepositoryAdvisoryCreateVulnerabilities copyWith({RepositoryAdvisoryCreateVulnerabilitiesPackage? package, Omittable<String?>? vulnerableVersionRange, Omittable<String?>? patchedVersions, Omittable<List<String>?>? vulnerableFunctions, }) { return RepositoryAdvisoryCreateVulnerabilities(
  package: package ?? this.package,
  vulnerableVersionRange: vulnerableVersionRange ?? this.vulnerableVersionRange,
  patchedVersions: patchedVersions ?? this.patchedVersions,
  vulnerableFunctions: vulnerableFunctions ?? this.vulnerableFunctions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryAdvisoryCreateVulnerabilities &&
          package == other.package &&
          vulnerableVersionRange == other.vulnerableVersionRange &&
          patchedVersions == other.patchedVersions &&
          vulnerableFunctions.isPresent == other.vulnerableFunctions.isPresent &&
          listEquals(vulnerableFunctions.value, other.vulnerableFunctions.value); } 
@override int get hashCode { return Object.hash(package, vulnerableVersionRange, patchedVersions, Object.hashAll(vulnerableFunctions.value ?? const [])); } 
@override String toString() { return 'RepositoryAdvisoryCreateVulnerabilities(package: $package, vulnerableVersionRange: $vulnerableVersionRange, patchedVersions: $patchedVersions, vulnerableFunctions: $vulnerableFunctions)'; } 
 }
