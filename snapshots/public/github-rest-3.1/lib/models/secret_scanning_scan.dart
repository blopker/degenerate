// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information on a single scan performed by secret scanning on the repository
@immutable final class SecretScanningScan {const SecretScanningScan({this.type, this.status, this.completedAt = const Omittable.absent(), this.startedAt = const Omittable.absent(), });

factory SecretScanningScan.fromJson(Map<String, dynamic> json) { return SecretScanningScan(
  type: json['type'] as String?,
  status: json['status'] as String?,
  completedAt: json.containsKey('completed_at') ? Omittable(json['completed_at'] != null ? DateTime.parse(json['completed_at'] as String) : null) : const Omittable.absent(),
  startedAt: json.containsKey('started_at') ? Omittable(json['started_at'] != null ? DateTime.parse(json['started_at'] as String) : null) : const Omittable.absent(),
); }

/// The type of scan
final String? type;

/// The state of the scan. Either "completed", "running", or "pending"
final String? status;

/// The time that the scan was completed. Empty if the scan is running
final Omittable<DateTime?> completedAt;

/// The time that the scan was started. Empty if the scan is pending
final Omittable<DateTime?> startedAt;

Map<String, dynamic> toJson() { return {
  'type': ?type,
  'status': ?status,
  if (completedAt.isPresent) 'completed_at': completedAt.value?.toIso8601String(),
  if (startedAt.isPresent) 'started_at': startedAt.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'status', 'completed_at', 'started_at'}.contains(key)); } 
SecretScanningScan copyWith({String? Function()? type, String? Function()? status, Omittable<DateTime?>? completedAt, Omittable<DateTime?>? startedAt, }) { return SecretScanningScan(
  type: type != null ? type() : this.type,
  status: status != null ? status() : this.status,
  completedAt: completedAt ?? this.completedAt,
  startedAt: startedAt ?? this.startedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningScan &&
          type == other.type &&
          status == other.status &&
          completedAt == other.completedAt &&
          startedAt == other.startedAt; } 
@override int get hashCode { return Object.hash(type, status, completedAt, startedAt); } 
@override String toString() { return 'SecretScanningScan(type: $type, status: $status, completedAt: $completedAt, startedAt: $startedAt)'; } 
 }
