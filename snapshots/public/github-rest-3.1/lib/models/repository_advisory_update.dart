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
@immutable final class RepositoryAdvisoryUpdate {const RepositoryAdvisoryUpdate({this.summary, this.description, this.cveId = const Omittable.absent(), this.vulnerabilities, this.cweIds = const Omittable.absent(), this.credits = const Omittable.absent(), this.severity = const Omittable.absent(), this.cvssVectorString = const Omittable.absent(), this.state, this.collaboratingUsers = const Omittable.absent(), this.collaboratingTeams = const Omittable.absent(), });

factory RepositoryAdvisoryUpdate.fromJson(Map<String, dynamic> json) { return RepositoryAdvisoryUpdate(
  summary: json['summary'] as String?,
  description: json['description'] as String?,
  cveId: json.containsKey('cve_id') ? Omittable(json['cve_id'] as String?) : const Omittable.absent(),
  vulnerabilities: (json['vulnerabilities'] as List<dynamic>?)?.map((e) => RepositoryAdvisoryUpdateVulnerabilities.fromJson(e as Map<String, dynamic>)).toList(),
  cweIds: json.containsKey('cwe_ids') ? Omittable((json['cwe_ids'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  credits: json.containsKey('credits') ? Omittable((json['credits'] as List<dynamic>?)?.map((e) => RepositoryAdvisoryUpdateCredits.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  severity: json.containsKey('severity') ? Omittable(json['severity'] != null ? RepositoryAdvisoryUpdateSeverity.fromJson(json['severity'] as String) : null) : const Omittable.absent(),
  cvssVectorString: json.containsKey('cvss_vector_string') ? Omittable(json['cvss_vector_string'] as String?) : const Omittable.absent(),
  state: json['state'] != null ? RepositoryAdvisoryUpdateState.fromJson(json['state'] as String) : null,
  collaboratingUsers: json.containsKey('collaborating_users') ? Omittable((json['collaborating_users'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  collaboratingTeams: json.containsKey('collaborating_teams') ? Omittable((json['collaborating_teams'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

/// A short summary of the advisory.
final String? summary;

/// A detailed description of what the advisory impacts.
final String? description;

/// The Common Vulnerabilities and Exposures (CVE) ID.
final Omittable<String?> cveId;

/// A product affected by the vulnerability detailed in a repository security advisory.
final List<RepositoryAdvisoryUpdateVulnerabilities>? vulnerabilities;

/// A list of Common Weakness Enumeration (CWE) IDs.
final Omittable<List<String>?> cweIds;

/// A list of users receiving credit for their participation in the security advisory.
final Omittable<List<RepositoryAdvisoryUpdateCredits>?> credits;

/// The severity of the advisory. You must choose between setting this field or `cvss_vector_string`.
final Omittable<RepositoryAdvisoryUpdateSeverity?> severity;

/// The CVSS vector that calculates the severity of the advisory. You must choose between setting this field or `severity`.
final Omittable<String?> cvssVectorString;

/// The state of the advisory.
final RepositoryAdvisoryUpdateState? state;

/// A list of usernames who have been granted write access to the advisory.
final Omittable<List<String>?> collaboratingUsers;

/// A list of team slugs which have been granted write access to the advisory.
final Omittable<List<String>?> collaboratingTeams;

Map<String, dynamic> toJson() { return {
  'summary': ?summary,
  'description': ?description,
  if (cveId.isPresent) 'cve_id': cveId.value,
  if (vulnerabilities != null) 'vulnerabilities': vulnerabilities?.map((e) => e.toJson()).toList(),
  if (cweIds.isPresent) 'cwe_ids': cweIds.value,
  if (credits.isPresent) 'credits': credits.value?.map((e) => e.toJson()).toList(),
  if (severity.isPresent) 'severity': severity.value?.toJson(),
  if (cvssVectorString.isPresent) 'cvss_vector_string': cvssVectorString.value,
  if (state != null) 'state': state?.toJson(),
  if (collaboratingUsers.isPresent) 'collaborating_users': collaboratingUsers.value,
  if (collaboratingTeams.isPresent) 'collaborating_teams': collaboratingTeams.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'summary', 'description', 'cve_id', 'vulnerabilities', 'cwe_ids', 'credits', 'severity', 'cvss_vector_string', 'state', 'collaborating_users', 'collaborating_teams'}.contains(key)); } 
RepositoryAdvisoryUpdate copyWith({String? Function()? summary, String? Function()? description, Omittable<String?>? cveId, List<RepositoryAdvisoryUpdateVulnerabilities>? Function()? vulnerabilities, Omittable<List<String>?>? cweIds, Omittable<List<RepositoryAdvisoryUpdateCredits>?>? credits, Omittable<RepositoryAdvisoryUpdateSeverity?>? severity, Omittable<String?>? cvssVectorString, RepositoryAdvisoryUpdateState? Function()? state, Omittable<List<String>?>? collaboratingUsers, Omittable<List<String>?>? collaboratingTeams, }) { return RepositoryAdvisoryUpdate(
  summary: summary != null ? summary() : this.summary,
  description: description != null ? description() : this.description,
  cveId: cveId ?? this.cveId,
  vulnerabilities: vulnerabilities != null ? vulnerabilities() : this.vulnerabilities,
  cweIds: cweIds ?? this.cweIds,
  credits: credits ?? this.credits,
  severity: severity ?? this.severity,
  cvssVectorString: cvssVectorString ?? this.cvssVectorString,
  state: state != null ? state() : this.state,
  collaboratingUsers: collaboratingUsers ?? this.collaboratingUsers,
  collaboratingTeams: collaboratingTeams ?? this.collaboratingTeams,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryAdvisoryUpdate &&
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
          state == other.state &&
          collaboratingUsers.isPresent == other.collaboratingUsers.isPresent &&
          listEquals(collaboratingUsers.value, other.collaboratingUsers.value) &&
          collaboratingTeams.isPresent == other.collaboratingTeams.isPresent &&
          listEquals(collaboratingTeams.value, other.collaboratingTeams.value); } 
@override int get hashCode { return Object.hash(summary, description, cveId, Object.hashAll(vulnerabilities ?? const []), Object.hashAll(cweIds.value ?? const []), Object.hashAll(credits.value ?? const []), severity, cvssVectorString, state, Object.hashAll(collaboratingUsers.value ?? const []), Object.hashAll(collaboratingTeams.value ?? const [])); } 
@override String toString() { return 'RepositoryAdvisoryUpdate(summary: $summary, description: $description, cveId: $cveId, vulnerabilities: $vulnerabilities, cweIds: $cweIds, credits: $credits, severity: $severity, cvssVectorString: $cvssVectorString, state: $state, collaboratingUsers: $collaboratingUsers, collaboratingTeams: $collaboratingTeams)'; } 
 }
