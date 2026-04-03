// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_security_advisory_withdrawn_security_advisory_vulnerabilities_first_patched_version.dart';import 'webhook_security_advisory_withdrawn_security_advisory_vulnerabilities_package.dart';@immutable final class WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilities {const WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilities({required this.firstPatchedVersion, required this.package, required this.severity, required this.vulnerableVersionRange, });

factory WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilities.fromJson(Map<String, dynamic> json) { return WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilities(
  firstPatchedVersion: json['first_patched_version'] != null ? WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion.fromJson(json['first_patched_version'] as Map<String, dynamic>) : null,
  package: WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesPackage.fromJson(json['package'] as Map<String, dynamic>),
  severity: json['severity'] as String,
  vulnerableVersionRange: json['vulnerable_version_range'] as String,
); }

final WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion? firstPatchedVersion;

final WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesPackage package;

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
WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilities copyWith({WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesFirstPatchedVersion? Function()? firstPatchedVersion, WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilitiesPackage? package, String? severity, String? vulnerableVersionRange, }) { return WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilities(
  firstPatchedVersion: firstPatchedVersion != null ? firstPatchedVersion() : this.firstPatchedVersion,
  package: package ?? this.package,
  severity: severity ?? this.severity,
  vulnerableVersionRange: vulnerableVersionRange ?? this.vulnerableVersionRange,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilities &&
          firstPatchedVersion == other.firstPatchedVersion &&
          package == other.package &&
          severity == other.severity &&
          vulnerableVersionRange == other.vulnerableVersionRange; } 
@override int get hashCode { return Object.hash(firstPatchedVersion, package, severity, vulnerableVersionRange); } 
@override String toString() { return 'WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryVulnerabilities(firstPatchedVersion: $firstPatchedVersion, package: $package, severity: $severity, vulnerableVersionRange: $vulnerableVersionRange)'; } 
 }
