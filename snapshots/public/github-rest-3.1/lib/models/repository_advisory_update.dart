// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_advisory_update_credits.dart';import 'repository_advisory_update_vulnerabilities.dart';/// The severity of the advisory. You must choose between setting this field or `cvss_vector_string`.
@immutable final class RepositoryAdvisoryUpdateSeverity {const RepositoryAdvisoryUpdateSeverity._(this.value);

factory RepositoryAdvisoryUpdateSeverity.fromJson(String json) { return switch (json) {
  'critical' => critical,
  'high' => high,
  'medium' => medium,
  'low' => low,
  'null' => $null,
  _ => RepositoryAdvisoryUpdateSeverity._(json),
}; }

static const RepositoryAdvisoryUpdateSeverity critical = RepositoryAdvisoryUpdateSeverity._('critical');

static const RepositoryAdvisoryUpdateSeverity high = RepositoryAdvisoryUpdateSeverity._('high');

static const RepositoryAdvisoryUpdateSeverity medium = RepositoryAdvisoryUpdateSeverity._('medium');

static const RepositoryAdvisoryUpdateSeverity low = RepositoryAdvisoryUpdateSeverity._('low');

static const RepositoryAdvisoryUpdateSeverity $null = RepositoryAdvisoryUpdateSeverity._('null');

static const List<RepositoryAdvisoryUpdateSeverity> values = [critical, high, medium, low, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryAdvisoryUpdateSeverity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryAdvisoryUpdateSeverity($value)'; } 
 }
/// The state of the advisory.
@immutable final class RepositoryAdvisoryUpdateState {const RepositoryAdvisoryUpdateState._(this.value);

factory RepositoryAdvisoryUpdateState.fromJson(String json) { return switch (json) {
  'published' => published,
  'closed' => closed,
  'draft' => draft,
  _ => RepositoryAdvisoryUpdateState._(json),
}; }

static const RepositoryAdvisoryUpdateState published = RepositoryAdvisoryUpdateState._('published');

static const RepositoryAdvisoryUpdateState closed = RepositoryAdvisoryUpdateState._('closed');

static const RepositoryAdvisoryUpdateState draft = RepositoryAdvisoryUpdateState._('draft');

static const List<RepositoryAdvisoryUpdateState> values = [published, closed, draft];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryAdvisoryUpdateState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryAdvisoryUpdateState($value)'; } 
 }
@immutable final class RepositoryAdvisoryUpdate {const RepositoryAdvisoryUpdate({this.summary, this.description, this.cveId, this.vulnerabilities, this.cweIds, this.credits, this.severity, this.cvssVectorString, this.state, this.collaboratingUsers, this.collaboratingTeams, });

factory RepositoryAdvisoryUpdate.fromJson(Map<String, dynamic> json) { return RepositoryAdvisoryUpdate(
  summary: json['summary'] as String?,
  description: json['description'] as String?,
  cveId: json['cve_id'] as String?,
  vulnerabilities: (json['vulnerabilities'] as List<dynamic>?)?.map((e) => RepositoryAdvisoryUpdateVulnerabilities.fromJson(e as Map<String, dynamic>)).toList(),
  cweIds: (json['cwe_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
  credits: (json['credits'] as List<dynamic>?)?.map((e) => RepositoryAdvisoryUpdateCredits.fromJson(e as Map<String, dynamic>)).toList(),
  severity: json['severity'] != null ? RepositoryAdvisoryUpdateSeverity.fromJson(json['severity'] as String) : null,
  cvssVectorString: json['cvss_vector_string'] as String?,
  state: json['state'] != null ? RepositoryAdvisoryUpdateState.fromJson(json['state'] as String) : null,
  collaboratingUsers: (json['collaborating_users'] as List<dynamic>?)?.map((e) => e as String).toList(),
  collaboratingTeams: (json['collaborating_teams'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// A short summary of the advisory.
final String? summary;

/// A detailed description of what the advisory impacts.
final String? description;

/// The Common Vulnerabilities and Exposures (CVE) ID.
final String? cveId;

/// A product affected by the vulnerability detailed in a repository security advisory.
final List<RepositoryAdvisoryUpdateVulnerabilities>? vulnerabilities;

/// A list of Common Weakness Enumeration (CWE) IDs.
final List<String>? cweIds;

/// A list of users receiving credit for their participation in the security advisory.
final List<RepositoryAdvisoryUpdateCredits>? credits;

/// The severity of the advisory. You must choose between setting this field or `cvss_vector_string`.
final RepositoryAdvisoryUpdateSeverity? severity;

/// The CVSS vector that calculates the severity of the advisory. You must choose between setting this field or `severity`.
final String? cvssVectorString;

/// The state of the advisory.
final RepositoryAdvisoryUpdateState? state;

/// A list of usernames who have been granted write access to the advisory.
final List<String>? collaboratingUsers;

/// A list of team slugs which have been granted write access to the advisory.
final List<String>? collaboratingTeams;

Map<String, dynamic> toJson() { return {
  'summary': ?summary,
  'description': ?description,
  'cve_id': ?cveId,
  if (vulnerabilities != null) 'vulnerabilities': vulnerabilities?.map((e) => e.toJson()).toList(),
  'cwe_ids': ?cweIds,
  if (credits != null) 'credits': credits?.map((e) => e.toJson()).toList(),
  if (severity != null) 'severity': severity?.toJson(),
  'cvss_vector_string': ?cvssVectorString,
  if (state != null) 'state': state?.toJson(),
  'collaborating_users': ?collaboratingUsers,
  'collaborating_teams': ?collaboratingTeams,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'summary', 'description', 'cve_id', 'vulnerabilities', 'cwe_ids', 'credits', 'severity', 'cvss_vector_string', 'state', 'collaborating_users', 'collaborating_teams'}.contains(key)); } 
RepositoryAdvisoryUpdate copyWith({String Function()? summary, String Function()? description, String? Function()? cveId, List<RepositoryAdvisoryUpdateVulnerabilities> Function()? vulnerabilities, List<String>? Function()? cweIds, List<RepositoryAdvisoryUpdateCredits>? Function()? credits, RepositoryAdvisoryUpdateSeverity? Function()? severity, String? Function()? cvssVectorString, RepositoryAdvisoryUpdateState Function()? state, List<String>? Function()? collaboratingUsers, List<String>? Function()? collaboratingTeams, }) { return RepositoryAdvisoryUpdate(
  summary: summary != null ? summary() : this.summary,
  description: description != null ? description() : this.description,
  cveId: cveId != null ? cveId() : this.cveId,
  vulnerabilities: vulnerabilities != null ? vulnerabilities() : this.vulnerabilities,
  cweIds: cweIds != null ? cweIds() : this.cweIds,
  credits: credits != null ? credits() : this.credits,
  severity: severity != null ? severity() : this.severity,
  cvssVectorString: cvssVectorString != null ? cvssVectorString() : this.cvssVectorString,
  state: state != null ? state() : this.state,
  collaboratingUsers: collaboratingUsers != null ? collaboratingUsers() : this.collaboratingUsers,
  collaboratingTeams: collaboratingTeams != null ? collaboratingTeams() : this.collaboratingTeams,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryAdvisoryUpdate &&
          summary == other.summary &&
          description == other.description &&
          cveId == other.cveId &&
          listEquals(vulnerabilities, other.vulnerabilities) &&
          listEquals(cweIds, other.cweIds) &&
          listEquals(credits, other.credits) &&
          severity == other.severity &&
          cvssVectorString == other.cvssVectorString &&
          state == other.state &&
          listEquals(collaboratingUsers, other.collaboratingUsers) &&
          listEquals(collaboratingTeams, other.collaboratingTeams); } 
@override int get hashCode { return Object.hash(summary, description, cveId, Object.hashAll(vulnerabilities ?? const []), Object.hashAll(cweIds ?? const []), Object.hashAll(credits ?? const []), severity, cvssVectorString, state, Object.hashAll(collaboratingUsers ?? const []), Object.hashAll(collaboratingTeams ?? const [])); } 
@override String toString() { return 'RepositoryAdvisoryUpdate(summary: $summary, description: $description, cveId: $cveId, vulnerabilities: $vulnerabilities, cweIds: $cweIds, credits: $credits, severity: $severity, cvssVectorString: $cvssVectorString, state: $state, collaboratingUsers: $collaboratingUsers, collaboratingTeams: $collaboratingTeams)'; } 
 }
