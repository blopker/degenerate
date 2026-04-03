// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'time.dart';/// PersistentVolumeStatus is the current status of a persistent volume.
@immutable final class PersistentVolumeStatus {const PersistentVolumeStatus({this.lastPhaseTransitionTime, this.message, this.phase, this.reason, });

factory PersistentVolumeStatus.fromJson(Map<String, dynamic> json) { return PersistentVolumeStatus(
  lastPhaseTransitionTime: json['lastPhaseTransitionTime'] != null ? Time.fromJson(json['lastPhaseTransitionTime'] as String) : null,
  message: json['message'] as String?,
  phase: json['phase'] as String?,
  reason: json['reason'] as String?,
); }

/// lastPhaseTransitionTime is the time the phase transitioned from one to another and automatically resets to current time everytime a volume phase transitions.
final Time? lastPhaseTransitionTime;

/// message is a human-readable message indicating details about why the volume is in this state.
final String? message;

/// phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase
final String? phase;

/// reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
final String? reason;

Map<String, dynamic> toJson() { return {
  if (lastPhaseTransitionTime != null) 'lastPhaseTransitionTime': lastPhaseTransitionTime?.toJson(),
  'message': ?message,
  'phase': ?phase,
  'reason': ?reason,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'lastPhaseTransitionTime', 'message', 'phase', 'reason'}.contains(key)); } 
PersistentVolumeStatus copyWith({Time Function()? lastPhaseTransitionTime, String Function()? message, String Function()? phase, String Function()? reason, }) { return PersistentVolumeStatus(
  lastPhaseTransitionTime: lastPhaseTransitionTime != null ? lastPhaseTransitionTime() : this.lastPhaseTransitionTime,
  message: message != null ? message() : this.message,
  phase: phase != null ? phase() : this.phase,
  reason: reason != null ? reason() : this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersistentVolumeStatus &&
          lastPhaseTransitionTime == other.lastPhaseTransitionTime &&
          message == other.message &&
          phase == other.phase &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(lastPhaseTransitionTime, message, phase, reason); } 
@override String toString() { return 'PersistentVolumeStatus(lastPhaseTransitionTime: $lastPhaseTransitionTime, message: $message, phase: $phase, reason: $reason)'; } 
 }
