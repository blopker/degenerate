// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cvss_severities.dart';import 'dependabot_alert_security_advisory_cvss.dart';import 'dependabot_alert_security_advisory_cwes.dart';import 'dependabot_alert_security_advisory_identifiers.dart';import 'dependabot_alert_security_advisory_references.dart';import 'dependabot_alert_security_vulnerability.dart';import 'security_advisory_epss.dart';/// The severity of the advisory.
final class DependabotAlertSecurityAdvisorySeverity {const DependabotAlertSecurityAdvisorySeverity._(this.value);

factory DependabotAlertSecurityAdvisorySeverity.fromJson(String json) { return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  'critical' => critical,
  _ => DependabotAlertSecurityAdvisorySeverity._(json),
}; }

static const DependabotAlertSecurityAdvisorySeverity low = DependabotAlertSecurityAdvisorySeverity._('low');

static const DependabotAlertSecurityAdvisorySeverity medium = DependabotAlertSecurityAdvisorySeverity._('medium');

static const DependabotAlertSecurityAdvisorySeverity high = DependabotAlertSecurityAdvisorySeverity._('high');

static const DependabotAlertSecurityAdvisorySeverity critical = DependabotAlertSecurityAdvisorySeverity._('critical');

static const List<DependabotAlertSecurityAdvisorySeverity> values = [low, medium, high, critical];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotAlertSecurityAdvisorySeverity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependabotAlertSecurityAdvisorySeverity($value)'; } 
 }
/// Details for the GitHub Security Advisory.
final class DependabotAlertSecurityAdvisory {const DependabotAlertSecurityAdvisory({required this.ghsaId, required this.cveId, required this.summary, required this.description, required this.vulnerabilities, required this.severity, required this.cvss, this.cvssSeverities, this.epss, required this.cwes, required this.identifiers, required this.references, required this.publishedAt, required this.updatedAt, required this.withdrawnAt, });

factory DependabotAlertSecurityAdvisory.fromJson(Map<String, dynamic> json) { return DependabotAlertSecurityAdvisory(
  ghsaId: json['ghsa_id'] as String,
  cveId: json['cve_id'] as String?,
  summary: json['summary'] as String,
  description: json['description'] as String,
  vulnerabilities: (json['vulnerabilities'] as List<dynamic>).map((e) => DependabotAlertSecurityVulnerability.fromJson(e as Map<String, dynamic>)).toList(),
  severity: DependabotAlertSecurityAdvisorySeverity.fromJson(json['severity'] as String),
  cvss: DependabotAlertSecurityAdvisoryCvss.fromJson(json['cvss'] as Map<String, dynamic>),
  cvssSeverities: json['cvss_severities'] != null ? CvssSeverities.fromJson(json['cvss_severities'] as Map<String, dynamic>) : null,
  epss: json['epss'] != null ? SecurityAdvisoryEpss.fromJson(json['epss'] as Map<String, dynamic>) : null,
  cwes: (json['cwes'] as List<dynamic>).map((e) => DependabotAlertSecurityAdvisoryCwes.fromJson(e as Map<String, dynamic>)).toList(),
  identifiers: (json['identifiers'] as List<dynamic>).map((e) => DependabotAlertSecurityAdvisoryIdentifiers.fromJson(e as Map<String, dynamic>)).toList(),
  references: (json['references'] as List<dynamic>).map((e) => DependabotAlertSecurityAdvisoryReferences.fromJson(e as Map<String, dynamic>)).toList(),
  publishedAt: DateTime.parse(json['published_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  withdrawnAt: json['withdrawn_at'] != null ? DateTime.parse(json['withdrawn_at'] as String) : null,
); }

/// The unique GitHub Security Advisory ID assigned to the advisory.
final String ghsaId;

/// The unique CVE ID assigned to the advisory.
final String? cveId;

/// A short, plain text summary of the advisory.
final String summary;

/// A long-form Markdown-supported description of the advisory.
final String description;

/// Vulnerable version range information for the advisory.
final List<DependabotAlertSecurityVulnerability> vulnerabilities;

/// The severity of the advisory.
final DependabotAlertSecurityAdvisorySeverity severity;

/// Details for the advisory pertaining to the Common Vulnerability Scoring System.
final DependabotAlertSecurityAdvisoryCvss cvss;

final CvssSeverities? cvssSeverities;

final SecurityAdvisoryEpss? epss;

/// Details for the advisory pertaining to Common Weakness Enumeration.
final List<DependabotAlertSecurityAdvisoryCwes> cwes;

/// Values that identify this advisory among security information sources.
final List<DependabotAlertSecurityAdvisoryIdentifiers> identifiers;

/// Links to additional advisory information.
final List<DependabotAlertSecurityAdvisoryReferences> references;

/// The time that the advisory was published in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final DateTime publishedAt;

/// The time that the advisory was last modified in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final DateTime updatedAt;

/// The time that the advisory was withdrawn in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final DateTime? withdrawnAt;

Map<String, dynamic> toJson() { return {
  'ghsa_id': ghsaId,
  'cve_id': ?cveId,
  'summary': summary,
  'description': description,
  'vulnerabilities': vulnerabilities.map((e) => e.toJson()).toList(),
  'severity': severity.toJson(),
  'cvss': cvss.toJson(),
  if (cvssSeverities != null) 'cvss_severities': cvssSeverities?.toJson(),
  if (epss != null) 'epss': epss?.toJson(),
  'cwes': cwes.map((e) => e.toJson()).toList(),
  'identifiers': identifiers.map((e) => e.toJson()).toList(),
  'references': references.map((e) => e.toJson()).toList(),
  'published_at': publishedAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  if (withdrawnAt != null) 'withdrawn_at': withdrawnAt?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ghsa_id') && json['ghsa_id'] is String &&
      json.containsKey('cve_id') && json['cve_id'] is String &&
      json.containsKey('summary') && json['summary'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('vulnerabilities') &&
      json.containsKey('severity') &&
      json.containsKey('cvss') &&
      json.containsKey('cwes') &&
      json.containsKey('identifiers') &&
      json.containsKey('references') &&
      json.containsKey('published_at') && json['published_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('withdrawn_at') && json['withdrawn_at'] is String; } 
DependabotAlertSecurityAdvisory copyWith({String? ghsaId, String? Function()? cveId, String? summary, String? description, List<DependabotAlertSecurityVulnerability>? vulnerabilities, DependabotAlertSecurityAdvisorySeverity? severity, DependabotAlertSecurityAdvisoryCvss? cvss, CvssSeverities Function()? cvssSeverities, SecurityAdvisoryEpss Function()? epss, List<DependabotAlertSecurityAdvisoryCwes>? cwes, List<DependabotAlertSecurityAdvisoryIdentifiers>? identifiers, List<DependabotAlertSecurityAdvisoryReferences>? references, DateTime? publishedAt, DateTime? updatedAt, DateTime? Function()? withdrawnAt, }) { return DependabotAlertSecurityAdvisory(
  ghsaId: ghsaId ?? this.ghsaId,
  cveId: cveId != null ? cveId() : this.cveId,
  summary: summary ?? this.summary,
  description: description ?? this.description,
  vulnerabilities: vulnerabilities ?? this.vulnerabilities,
  severity: severity ?? this.severity,
  cvss: cvss ?? this.cvss,
  cvssSeverities: cvssSeverities != null ? cvssSeverities() : this.cvssSeverities,
  epss: epss != null ? epss() : this.epss,
  cwes: cwes ?? this.cwes,
  identifiers: identifiers ?? this.identifiers,
  references: references ?? this.references,
  publishedAt: publishedAt ?? this.publishedAt,
  updatedAt: updatedAt ?? this.updatedAt,
  withdrawnAt: withdrawnAt != null ? withdrawnAt() : this.withdrawnAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependabotAlertSecurityAdvisory &&
          ghsaId == other.ghsaId &&
          cveId == other.cveId &&
          summary == other.summary &&
          description == other.description &&
          listEquals(vulnerabilities, other.vulnerabilities) &&
          severity == other.severity &&
          cvss == other.cvss &&
          cvssSeverities == other.cvssSeverities &&
          epss == other.epss &&
          listEquals(cwes, other.cwes) &&
          listEquals(identifiers, other.identifiers) &&
          listEquals(references, other.references) &&
          publishedAt == other.publishedAt &&
          updatedAt == other.updatedAt &&
          withdrawnAt == other.withdrawnAt; } 
@override int get hashCode { return Object.hash(ghsaId, cveId, summary, description, Object.hashAll(vulnerabilities), severity, cvss, cvssSeverities, epss, Object.hashAll(cwes), Object.hashAll(identifiers), Object.hashAll(references), publishedAt, updatedAt, withdrawnAt); } 
@override String toString() { return 'DependabotAlertSecurityAdvisory(ghsaId: $ghsaId, cveId: $cveId, summary: $summary, description: $description, vulnerabilities: $vulnerabilities, severity: $severity, cvss: $cvss, cvssSeverities: $cvssSeverities, epss: $epss, cwes: $cwes, identifiers: $identifiers, references: $references, publishedAt: $publishedAt, updatedAt: $updatedAt, withdrawnAt: $withdrawnAt)'; } 
 }
