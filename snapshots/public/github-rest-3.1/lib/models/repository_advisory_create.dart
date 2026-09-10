// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_advisory_create_credits.dart';import 'repository_advisory_create_vulnerabilities.dart';/// The severity of the advisory. You must choose between setting this field or `cvss_vector_string`.
@immutable final class RepositoryAdvisoryCreateSeverity {const RepositoryAdvisoryCreateSeverity._(this.value);

factory RepositoryAdvisoryCreateSeverity.fromJson(String json) { return switch (json) {
  'critical' => critical,
  'high' => high,
  'medium' => medium,
  'low' => low,
  'null' => $null,
  _ => RepositoryAdvisoryCreateSeverity._(json),
}; }

static const RepositoryAdvisoryCreateSeverity critical = RepositoryAdvisoryCreateSeverity._('critical');

static const RepositoryAdvisoryCreateSeverity high = RepositoryAdvisoryCreateSeverity._('high');

static const RepositoryAdvisoryCreateSeverity medium = RepositoryAdvisoryCreateSeverity._('medium');

static const RepositoryAdvisoryCreateSeverity low = RepositoryAdvisoryCreateSeverity._('low');

static const RepositoryAdvisoryCreateSeverity $null = RepositoryAdvisoryCreateSeverity._('null');

static const List<RepositoryAdvisoryCreateSeverity> values = [critical, high, medium, low, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryAdvisoryCreateSeverity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryAdvisoryCreateSeverity($value)'; } 
 }
@immutable final class RepositoryAdvisoryCreate {const RepositoryAdvisoryCreate({required this.summary, required this.description, required this.vulnerabilities, this.cveId = const Omittable.absent(), this.cweIds = const Omittable.absent(), this.credits = const Omittable.absent(), this.severity = const Omittable.absent(), this.cvssVectorString = const Omittable.absent(), this.startPrivateFork = false, });

factory RepositoryAdvisoryCreate.fromJson(Map<String, dynamic> json) { return RepositoryAdvisoryCreate(
  summary: json['summary'] as String,
  description: json['description'] as String,
  cveId: json.containsKey('cve_id') ? Omittable(json['cve_id'] as String?) : const Omittable.absent(),
  vulnerabilities: (json['vulnerabilities'] as List<dynamic>).map((e) => RepositoryAdvisoryCreateVulnerabilities.fromJson(e as Map<String, dynamic>)).toList(),
  cweIds: json.containsKey('cwe_ids') ? Omittable((json['cwe_ids'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  credits: json.containsKey('credits') ? Omittable((json['credits'] as List<dynamic>?)?.map((e) => RepositoryAdvisoryCreateCredits.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  severity: json.containsKey('severity') ? Omittable(json['severity'] != null ? RepositoryAdvisoryCreateSeverity.fromJson(json['severity'] as String) : null) : const Omittable.absent(),
  cvssVectorString: json.containsKey('cvss_vector_string') ? Omittable(json['cvss_vector_string'] as String?) : const Omittable.absent(),
  startPrivateFork: json.containsKey('start_private_fork') ? json['start_private_fork'] as bool : false,
); }

/// A short summary of the advisory.
final String summary;

/// A detailed description of what the advisory impacts.
final String description;

/// The Common Vulnerabilities and Exposures (CVE) ID.
final Omittable<String?> cveId;

/// A product affected by the vulnerability detailed in a repository security advisory.
final List<RepositoryAdvisoryCreateVulnerabilities> vulnerabilities;

/// A list of Common Weakness Enumeration (CWE) IDs.
final Omittable<List<String>?> cweIds;

/// A list of users receiving credit for their participation in the security advisory.
final Omittable<List<RepositoryAdvisoryCreateCredits>?> credits;

/// The severity of the advisory. You must choose between setting this field or `cvss_vector_string`.
final Omittable<RepositoryAdvisoryCreateSeverity?> severity;

/// The CVSS vector that calculates the severity of the advisory. You must choose between setting this field or `severity`.
final Omittable<String?> cvssVectorString;

/// Whether to create a temporary private fork of the repository to collaborate on a fix.
final bool startPrivateFork;

Map<String, dynamic> toJson() { return {
  'summary': summary,
  'description': description,
  if (cveId.isPresent) 'cve_id': cveId.value,
  'vulnerabilities': vulnerabilities.map((e) => e.toJson()).toList(),
  if (cweIds.isPresent) 'cwe_ids': cweIds.value,
  if (credits.isPresent) 'credits': credits.value?.map((e) => e.toJson()).toList(),
  if (severity.isPresent) 'severity': severity.value?.toJson(),
  if (cvssVectorString.isPresent) 'cvss_vector_string': cvssVectorString.value,
  'start_private_fork': startPrivateFork,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('summary') && json['summary'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('vulnerabilities'); } 
RepositoryAdvisoryCreate copyWith({String? summary, String? description, Omittable<String?>? cveId, List<RepositoryAdvisoryCreateVulnerabilities>? vulnerabilities, Omittable<List<String>?>? cweIds, Omittable<List<RepositoryAdvisoryCreateCredits>?>? credits, Omittable<RepositoryAdvisoryCreateSeverity?>? severity, Omittable<String?>? cvssVectorString, bool Function()? startPrivateFork, }) { return RepositoryAdvisoryCreate(
  summary: summary ?? this.summary,
  description: description ?? this.description,
  cveId: cveId ?? this.cveId,
  vulnerabilities: vulnerabilities ?? this.vulnerabilities,
  cweIds: cweIds ?? this.cweIds,
  credits: credits ?? this.credits,
  severity: severity ?? this.severity,
  cvssVectorString: cvssVectorString ?? this.cvssVectorString,
  startPrivateFork: startPrivateFork != null ? startPrivateFork() : this.startPrivateFork,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryAdvisoryCreate &&
          summary == other.summary &&
          description == other.description &&
          cveId == other.cveId &&
          listEquals(vulnerabilities, other.vulnerabilities) &&
          cweIds.isPresent == other.cweIds.isPresent &&
          listEquals(cweIds.value, other.cweIds.value) &&
          credits.isPresent == other.credits.isPresent &&
          listEquals(credits.value, other.credits.value) &&
          severity == other.severity &&
          cvssVectorString == other.cvssVectorString &&
          startPrivateFork == other.startPrivateFork; } 
@override int get hashCode { return Object.hash(summary, description, cveId, Object.hashAll(vulnerabilities), Object.hashAll(cweIds.value ?? const []), Object.hashAll(credits.value ?? const []), severity, cvssVectorString, startPrivateFork); } 
@override String toString() { return 'RepositoryAdvisoryCreate(summary: $summary, description: $description, cveId: $cveId, vulnerabilities: $vulnerabilities, cweIds: $cweIds, credits: $credits, severity: $severity, cvssVectorString: $cvssVectorString, startPrivateFork: $startPrivateFork)'; } 
 }
