// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_event_create_bulk_response202_created_events.dart';import 'post_event_create_bulk_response202_errors.dart';/// Detailed result of bulk event creation with auto-tag management
final class PostEventCreateBulkResponse202 {const PostEventCreateBulkResponse202({this.createBulkEventsRequestId, this.createdEvents, required this.createdEventsCount, required this.createdTagsCount, required this.errorCount, this.errors, required this.queuedIndicatorsCount, });

factory PostEventCreateBulkResponse202.fromJson(Map<String, dynamic> json) { return PostEventCreateBulkResponse202(
  createBulkEventsRequestId: json['createBulkEventsRequestId'] as String?,
  createdEvents: (json['createdEvents'] as List<dynamic>?)?.map((e) => PostEventCreateBulkResponse202CreatedEvents.fromJson(e as Map<String, dynamic>)).toList(),
  createdEventsCount: (json['createdEventsCount'] as num).toDouble(),
  createdTagsCount: (json['createdTagsCount'] as num).toDouble(),
  errorCount: (json['errorCount'] as num).toDouble(),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => PostEventCreateBulkResponse202Errors.fromJson(e as Map<String, dynamic>)).toList(),
  queuedIndicatorsCount: (json['queuedIndicatorsCount'] as num).toDouble(),
); }

/// Correlation ID for async indicator processing
final String? createBulkEventsRequestId;

/// Array of created events with UUIDs and shard locations. Only present when includeCreatedEvents=true
final List<PostEventCreateBulkResponse202CreatedEvents>? createdEvents;

/// Number of events created
final double createdEventsCount;

/// Number of new tags created in SoT
final double createdTagsCount;

/// Number of errors encountered
final double errorCount;

/// Array of error details
final List<PostEventCreateBulkResponse202Errors>? errors;

/// Number of indicators queued for async processing
final double queuedIndicatorsCount;

Map<String, dynamic> toJson() { return {
  'createBulkEventsRequestId': ?createBulkEventsRequestId,
  if (createdEvents != null) 'createdEvents': createdEvents?.map((e) => e.toJson()).toList(),
  'createdEventsCount': createdEventsCount,
  'createdTagsCount': createdTagsCount,
  'errorCount': errorCount,
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'queuedIndicatorsCount': queuedIndicatorsCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('createdEventsCount') && json['createdEventsCount'] is num &&
      json.containsKey('createdTagsCount') && json['createdTagsCount'] is num &&
      json.containsKey('errorCount') && json['errorCount'] is num &&
      json.containsKey('queuedIndicatorsCount') && json['queuedIndicatorsCount'] is num; } 
PostEventCreateBulkResponse202 copyWith({String Function()? createBulkEventsRequestId, List<PostEventCreateBulkResponse202CreatedEvents> Function()? createdEvents, double? createdEventsCount, double? createdTagsCount, double? errorCount, List<PostEventCreateBulkResponse202Errors> Function()? errors, double? queuedIndicatorsCount, }) { return PostEventCreateBulkResponse202(
  createBulkEventsRequestId: createBulkEventsRequestId != null ? createBulkEventsRequestId() : this.createBulkEventsRequestId,
  createdEvents: createdEvents != null ? createdEvents() : this.createdEvents,
  createdEventsCount: createdEventsCount ?? this.createdEventsCount,
  createdTagsCount: createdTagsCount ?? this.createdTagsCount,
  errorCount: errorCount ?? this.errorCount,
  errors: errors != null ? errors() : this.errors,
  queuedIndicatorsCount: queuedIndicatorsCount ?? this.queuedIndicatorsCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventCreateBulkResponse202 &&
          createBulkEventsRequestId == other.createBulkEventsRequestId &&
          listEquals(createdEvents, other.createdEvents) &&
          createdEventsCount == other.createdEventsCount &&
          createdTagsCount == other.createdTagsCount &&
          errorCount == other.errorCount &&
          listEquals(errors, other.errors) &&
          queuedIndicatorsCount == other.queuedIndicatorsCount; } 
@override int get hashCode { return Object.hash(createBulkEventsRequestId, Object.hashAll(createdEvents ?? const []), createdEventsCount, createdTagsCount, errorCount, Object.hashAll(errors ?? const []), queuedIndicatorsCount); } 
@override String toString() { return 'PostEventCreateBulkResponse202(createBulkEventsRequestId: $createBulkEventsRequestId, createdEvents: $createdEvents, createdEventsCount: $createdEventsCount, createdTagsCount: $createdTagsCount, errorCount: $errorCount, errors: $errors, queuedIndicatorsCount: $queuedIndicatorsCount)'; } 
 }
