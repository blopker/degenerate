// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventCreateBulkResponseErrors {const PostEventCreateBulkResponseErrors({required this.error, required this.eventIndex, });

factory PostEventCreateBulkResponseErrors.fromJson(Map<String, dynamic> json) { return PostEventCreateBulkResponseErrors(
  error: json['error'] as String,
  eventIndex: (json['eventIndex'] as num).toDouble(),
); }

/// Error message
final String error;

/// Index of the event that caused the error
final double eventIndex;

Map<String, dynamic> toJson() { return {
  'error': error,
  'eventIndex': eventIndex,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('error') && json['error'] is String &&
      json.containsKey('eventIndex') && json['eventIndex'] is num; } 
PostEventCreateBulkResponseErrors copyWith({String? error, double? eventIndex, }) { return PostEventCreateBulkResponseErrors(
  error: error ?? this.error,
  eventIndex: eventIndex ?? this.eventIndex,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventCreateBulkResponseErrors &&
          error == other.error &&
          eventIndex == other.eventIndex; } 
@override int get hashCode { return Object.hash(error, eventIndex); } 
@override String toString() { return 'PostEventCreateBulkResponseErrors(error: $error, eventIndex: $eventIndex)'; } 
 }
