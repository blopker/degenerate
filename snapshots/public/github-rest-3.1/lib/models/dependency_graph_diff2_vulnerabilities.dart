// GENERATED CODE - DO NOT MODIFY BY HAND

final class DependencyGraphDiff2Vulnerabilities {const DependencyGraphDiff2Vulnerabilities({required this.severity, required this.advisoryGhsaId, required this.advisorySummary, required this.advisoryUrl, });

factory DependencyGraphDiff2Vulnerabilities.fromJson(Map<String, dynamic> json) { return DependencyGraphDiff2Vulnerabilities(
  severity: json['severity'] as String,
  advisoryGhsaId: json['advisory_ghsa_id'] as String,
  advisorySummary: json['advisory_summary'] as String,
  advisoryUrl: json['advisory_url'] as String,
); }

final String severity;

final String advisoryGhsaId;

final String advisorySummary;

final String advisoryUrl;

Map<String, dynamic> toJson() { return {
  'severity': severity,
  'advisory_ghsa_id': advisoryGhsaId,
  'advisory_summary': advisorySummary,
  'advisory_url': advisoryUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('severity') && json['severity'] is String &&
      json.containsKey('advisory_ghsa_id') && json['advisory_ghsa_id'] is String &&
      json.containsKey('advisory_summary') && json['advisory_summary'] is String &&
      json.containsKey('advisory_url') && json['advisory_url'] is String; } 
DependencyGraphDiff2Vulnerabilities copyWith({String? severity, String? advisoryGhsaId, String? advisorySummary, String? advisoryUrl, }) { return DependencyGraphDiff2Vulnerabilities(
  severity: severity ?? this.severity,
  advisoryGhsaId: advisoryGhsaId ?? this.advisoryGhsaId,
  advisorySummary: advisorySummary ?? this.advisorySummary,
  advisoryUrl: advisoryUrl ?? this.advisoryUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependencyGraphDiff2Vulnerabilities &&
          severity == other.severity &&
          advisoryGhsaId == other.advisoryGhsaId &&
          advisorySummary == other.advisorySummary &&
          advisoryUrl == other.advisoryUrl; } 
@override int get hashCode { return Object.hash(severity, advisoryGhsaId, advisorySummary, advisoryUrl); } 
@override String toString() { return 'DependencyGraphDiff2Vulnerabilities(severity: $severity, advisoryGhsaId: $advisoryGhsaId, advisorySummary: $advisorySummary, advisoryUrl: $advisoryUrl)'; } 
 }
