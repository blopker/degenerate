// GENERATED CODE - DO NOT MODIFY BY HAND

import 'time.dart';/// NamespaceCondition contains details about state of namespace.
final class NamespaceCondition {const NamespaceCondition({this.lastTransitionTime, this.message, this.reason, this.status = '', this.type = '', });

factory NamespaceCondition.fromJson(Map<String, dynamic> json) { return NamespaceCondition(
  lastTransitionTime: json['lastTransitionTime'] != null ? Time.fromJson(json['lastTransitionTime'] as String) : null,
  message: json['message'] as String?,
  reason: json['reason'] as String?,
  status: json['status'] as String,
  type: json['type'] as String,
); }

/// Last time the condition transitioned from one status to another.
final Time? lastTransitionTime;

/// Human-readable message indicating details about last transition.
final String? message;

/// Unique, one-word, CamelCase reason for the condition's last transition.
final String? reason;

/// Status of the condition, one of True, False, Unknown.
final String status;

/// Type of namespace controller condition.
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
NamespaceCondition copyWith({Time Function()? lastTransitionTime, String Function()? message, String Function()? reason, String? status, String? type, }) { return NamespaceCondition(
  lastTransitionTime: lastTransitionTime != null ? lastTransitionTime() : this.lastTransitionTime,
  message: message != null ? message() : this.message,
  reason: reason != null ? reason() : this.reason,
  status: status ?? this.status,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NamespaceCondition &&
          lastTransitionTime == other.lastTransitionTime &&
          message == other.message &&
          reason == other.reason &&
          status == other.status &&
          type == other.type; } 
@override int get hashCode { return Object.hash(lastTransitionTime, message, reason, status, type); } 
@override String toString() { return 'NamespaceCondition(lastTransitionTime: $lastTransitionTime, message: $message, reason: $reason, status: $status, type: $type)'; } 
 }
