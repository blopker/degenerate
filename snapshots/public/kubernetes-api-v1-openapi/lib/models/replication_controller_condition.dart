// GENERATED CODE - DO NOT MODIFY BY HAND

import 'time.dart';/// ReplicationControllerCondition describes the state of a replication controller at a certain point.
final class ReplicationControllerCondition {const ReplicationControllerCondition({this.lastTransitionTime, this.message, this.reason, this.status = '', this.type = '', });

factory ReplicationControllerCondition.fromJson(Map<String, dynamic> json) { return ReplicationControllerCondition(
  lastTransitionTime: json['lastTransitionTime'] != null ? Time.fromJson(json['lastTransitionTime'] as String) : null,
  message: json['message'] as String?,
  reason: json['reason'] as String?,
  status: json['status'] as String,
  type: json['type'] as String,
); }

/// The last time the condition transitioned from one status to another.
final Time? lastTransitionTime;

/// A human readable message indicating details about the transition.
final String? message;

/// The reason for the condition's last transition.
final String? reason;

/// Status of the condition, one of True, False, Unknown.
final String status;

/// Type of replication controller condition.
final String type;

Map<String, dynamic> toJson() { return {
  if (lastTransitionTime != null) 'lastTransitionTime': lastTransitionTime?.toJson(),
  'message': ?message,
  'reason': ?reason,
  'status': status,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status') && json['status'] is String &&
      json.containsKey('type') && json['type'] is String; } 
ReplicationControllerCondition copyWith({Time Function()? lastTransitionTime, String Function()? message, String Function()? reason, String? status, String? type, }) { return ReplicationControllerCondition(
  lastTransitionTime: lastTransitionTime != null ? lastTransitionTime() : this.lastTransitionTime,
  message: message != null ? message() : this.message,
  reason: reason != null ? reason() : this.reason,
  status: status ?? this.status,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReplicationControllerCondition &&
          lastTransitionTime == other.lastTransitionTime &&
          message == other.message &&
          reason == other.reason &&
          status == other.status &&
          type == other.type; } 
@override int get hashCode { return Object.hash(lastTransitionTime, message, reason, status, type); } 
@override String toString() { return 'ReplicationControllerCondition(lastTransitionTime: $lastTransitionTime, message: $message, reason: $reason, status: $status, type: $type)'; } 
 }
