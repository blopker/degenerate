// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Provides information about the action performed.
@immutable final class AaaAuditLogs2Action {const AaaAuditLogs2Action({this.description, this.result, this.time, this.type, });

factory AaaAuditLogs2Action.fromJson(Map<String, dynamic> json) { return AaaAuditLogs2Action(
  description: json['description'] as String?,
  result: json['result'] as String?,
  time: json['time'] != null ? DateTime.parse(json['time'] as String) : null,
  type: json['type'] as String?,
); }

/// A short description of the action performed.
final String? description;

/// The result of the action, indicating success or failure.
final String? result;

/// A timestamp indicating when the action was logged.
final DateTime? time;

/// A short string that describes the action that was performed.
final String? type;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'result': ?result,
  if (time != null) 'time': time?.toIso8601String(),
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'result', 'time', 'type'}.contains(key)); } 
AaaAuditLogs2Action copyWith({String Function()? description, String Function()? result, DateTime Function()? time, String Function()? type, }) { return AaaAuditLogs2Action(
  description: description != null ? description() : this.description,
  result: result != null ? result() : this.result,
  time: time != null ? time() : this.time,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaAuditLogs2Action &&
          description == other.description &&
          result == other.result &&
          time == other.time &&
          type == other.type; } 
@override int get hashCode { return Object.hash(description, result, time, type); } 
@override String toString() { return 'AaaAuditLogs2Action(description: $description, result: $result, time: $time, type: $type)'; } 
 }
