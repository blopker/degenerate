// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class QueuesPurgeGetResponseResult {const QueuesPurgeGetResponseResult({this.completed, this.startedAt, });

factory QueuesPurgeGetResponseResult.fromJson(Map<String, dynamic> json) { return QueuesPurgeGetResponseResult(
  completed: json['completed'] as String?,
  startedAt: json['started_at'] as String?,
); }

/// Indicates if the last purge operation completed successfully.
final String? completed;

/// Timestamp when the last purge operation started.
final String? startedAt;

Map<String, dynamic> toJson() { return {
  'completed': ?completed,
  'started_at': ?startedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'completed', 'started_at'}.contains(key)); } 
QueuesPurgeGetResponseResult copyWith({String Function()? completed, String Function()? startedAt, }) { return QueuesPurgeGetResponseResult(
  completed: completed != null ? completed() : this.completed,
  startedAt: startedAt != null ? startedAt() : this.startedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QueuesPurgeGetResponseResult &&
          completed == other.completed &&
          startedAt == other.startedAt; } 
@override int get hashCode { return Object.hash(completed, startedAt); } 
@override String toString() { return 'QueuesPurgeGetResponseResult(completed: $completed, startedAt: $startedAt)'; } 
 }
