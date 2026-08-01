// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'security_advisory_ecosystems.dart';/// The name of the package affected by the vulnerability.
@immutable final class RepositoryAdvisoryUpdateVulnerabilitiesPackage {const RepositoryAdvisoryUpdateVulnerabilitiesPackage({required this.ecosystem, this.name = const Omittable.absent(), });

factory RepositoryAdvisoryUpdateVulnerabilitiesPackage.fromJson(Map<String, dynamic> json) { return RepositoryAdvisoryUpdateVulnerabilitiesPackage(
  ecosystem: SecurityAdvisoryEcosystems.fromJson(json['ecosystem'] as String),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
); }

/// The package's language or package management ecosystem.
final SecurityAdvisoryEcosystems ecosystem;

/// The unique package name within its ecosystem.
final Omittable<String?> name;

Map<String, dynamic> toJson() { return {
  'ecosystem': ecosystem.toJson(),
  if (name.isPresent) 'name': name.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ecosystem'); } 
RepositoryAdvisoryUpdateVulnerabilitiesPackage copyWith({SecurityAdvisoryEcosystems? ecosystem, Omittable<String?>? name, }) { return RepositoryAdvisoryUpdateVulnerabilitiesPackage(
  ecosystem: ecosystem ?? this.ecosystem,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryAdvisoryUpdateVulnerabilitiesPackage &&
          ecosystem == other.ecosystem &&
          name == other.name; } 
@override int get hashCode { return Object.hash(ecosystem, name); } 
@override String toString() { return 'RepositoryAdvisoryUpdateVulnerabilitiesPackage(ecosystem: $ecosystem, name: $name)'; } 
 }
