// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecretScanningScanHistoryCustomPatternBackfillScans {const SecretScanningScanHistoryCustomPatternBackfillScans({this.type, this.status, this.completedAt, this.startedAt, this.patternName, this.patternScope, });

factory SecretScanningScanHistoryCustomPatternBackfillScans.fromJson(Map<String, dynamic> json) { return SecretScanningScanHistoryCustomPatternBackfillScans(
  type: json['type'] as String?,
  status: json['status'] as String?,
  completedAt: json['completed_at'] != null ? DateTime.parse(json['completed_at'] as String) : null,
  startedAt: json['started_at'] != null ? DateTime.parse(json['started_at'] as String) : null,
  patternName: json['pattern_name'] as String?,
  patternScope: json['pattern_scope'] as String?,
); }

/// The type of scan
final String? type;

/// The state of the scan. Either "completed", "running", or "pending"
final String? status;

/// The time that the scan was completed. Empty if the scan is running
final DateTime? completedAt;

/// The time that the scan was started. Empty if the scan is pending
final DateTime? startedAt;

/// Name of the custom pattern for custom pattern scans
final String? patternName;

/// Level at which the custom pattern is defined, one of "repository", "organization", or "enterprise"
final String? patternScope;

Map<String, dynamic> toJson() { return {
  'type': ?type,
  'status': ?status,
  if (completedAt != null) 'completed_at': completedAt?.toIso8601String(),
  if (startedAt != null) 'started_at': startedAt?.toIso8601String(),
  'pattern_name': ?patternName,
  'pattern_scope': ?patternScope,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'status', 'completed_at', 'started_at', 'pattern_name', 'pattern_scope'}.contains(key)); } 
SecretScanningScanHistoryCustomPatternBackfillScans copyWith({String Function()? type, String Function()? status, DateTime? Function()? completedAt, DateTime? Function()? startedAt, String Function()? patternName, String Function()? patternScope, }) { return SecretScanningScanHistoryCustomPatternBackfillScans(
  type: type != null ? type() : this.type,
  status: status != null ? status() : this.status,
  completedAt: completedAt != null ? completedAt() : this.completedAt,
  startedAt: startedAt != null ? startedAt() : this.startedAt,
  patternName: patternName != null ? patternName() : this.patternName,
  patternScope: patternScope != null ? patternScope() : this.patternScope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningScanHistoryCustomPatternBackfillScans &&
          type == other.type &&
          status == other.status &&
          completedAt == other.completedAt &&
          startedAt == other.startedAt &&
          patternName == other.patternName &&
          patternScope == other.patternScope; } 
@override int get hashCode { return Object.hash(type, status, completedAt, startedAt, patternName, patternScope); } 
@override String toString() { return 'SecretScanningScanHistoryCustomPatternBackfillScans(type: $type, status: $status, completedAt: $completedAt, startedAt: $startedAt, patternName: $patternName, patternScope: $patternScope)'; } 
 }
