// GENERATED CODE - DO NOT MODIFY BY HAND

import 'security_advisory_ecosystems.dart';/// The name of the package affected by the vulnerability.
final class RepositoryAdvisoryUpdateVulnerabilitiesPackage {const RepositoryAdvisoryUpdateVulnerabilitiesPackage({required this.ecosystem, this.name, });

factory RepositoryAdvisoryUpdateVulnerabilitiesPackage.fromJson(Map<String, dynamic> json) { return RepositoryAdvisoryUpdateVulnerabilitiesPackage(
  ecosystem: SecurityAdvisoryEcosystems.fromJson(json['ecosystem'] as String),
  name: json['name'] as String?,
); }

/// The package's language or package management ecosystem.
final SecurityAdvisoryEcosystems ecosystem;

/// The unique package name within its ecosystem.
final String? name;

Map<String, dynamic> toJson() { return {
  'ecosystem': ecosystem.toJson(),
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ecosystem'); } 
RepositoryAdvisoryUpdateVulnerabilitiesPackage copyWith({SecurityAdvisoryEcosystems? ecosystem, String? Function()? name, }) { return RepositoryAdvisoryUpdateVulnerabilitiesPackage(
  ecosystem: ecosystem ?? this.ecosystem,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryAdvisoryUpdateVulnerabilitiesPackage &&
          ecosystem == other.ecosystem &&
          name == other.name; } 
@override int get hashCode { return Object.hash(ecosystem, name); } 
@override String toString() { return 'RepositoryAdvisoryUpdateVulnerabilitiesPackage(ecosystem: $ecosystem, name: $name)'; } 
 }
