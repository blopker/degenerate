// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhooks_security_advisory_vulnerabilities_first_patched_version.dart';import 'webhooks_security_advisory_vulnerabilities_package.dart';final class WebhooksSecurityAdvisoryVulnerabilities {const WebhooksSecurityAdvisoryVulnerabilities({required this.firstPatchedVersion, required this.package, required this.severity, required this.vulnerableVersionRange, });

factory WebhooksSecurityAdvisoryVulnerabilities.fromJson(Map<String, dynamic> json) { return WebhooksSecurityAdvisoryVulnerabilities(
  firstPatchedVersion: json['first_patched_version'] != null ? WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion.fromJson(json['first_patched_version'] as Map<String, dynamic>) : null,
  package: WebhooksSecurityAdvisoryVulnerabilitiesPackage.fromJson(json['package'] as Map<String, dynamic>),
  severity: json['severity'] as String,
  vulnerableVersionRange: json['vulnerable_version_range'] as String,
); }

final WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion? firstPatchedVersion;

final WebhooksSecurityAdvisoryVulnerabilitiesPackage package;

final String severity;

final String vulnerableVersionRange;

Map<String, dynamic> toJson() { return {
  if (firstPatchedVersion != null) 'first_patched_version': firstPatchedVersion?.toJson(),
  'package': package.toJson(),
  'severity': severity,
  'vulnerable_version_range': vulnerableVersionRange,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('first_patched_version') &&
      json.containsKey('package') &&
      json.containsKey('severity') && json['severity'] is String &&
      json.containsKey('vulnerable_version_range') && json['vulnerable_version_range'] is String; } 
WebhooksSecurityAdvisoryVulnerabilities copyWith({WebhooksSecurityAdvisoryVulnerabilitiesFirstPatchedVersion? Function()? firstPatchedVersion, WebhooksSecurityAdvisoryVulnerabilitiesPackage? package, String? severity, String? vulnerableVersionRange, }) { return WebhooksSecurityAdvisoryVulnerabilities(
  firstPatchedVersion: firstPatchedVersion != null ? firstPatchedVersion() : this.firstPatchedVersion,
  package: package ?? this.package,
  severity: severity ?? this.severity,
  vulnerableVersionRange: vulnerableVersionRange ?? this.vulnerableVersionRange,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksSecurityAdvisoryVulnerabilities &&
          firstPatchedVersion == other.firstPatchedVersion &&
          package == other.package &&
          severity == other.severity &&
          vulnerableVersionRange == other.vulnerableVersionRange; } 
@override int get hashCode { return Object.hash(firstPatchedVersion, package, severity, vulnerableVersionRange); } 
@override String toString() { return 'WebhooksSecurityAdvisoryVulnerabilities(firstPatchedVersion: $firstPatchedVersion, package: $package, severity: $severity, vulnerableVersionRange: $vulnerableVersionRange)'; } 
 }
