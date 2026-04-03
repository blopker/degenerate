// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchInstanceCreateJobResponseResultSource {const AiSearchInstanceCreateJobResponseResultSource._(this.value);

factory AiSearchInstanceCreateJobResponseResultSource.fromJson(String json) { return switch (json) {
  'user' => user,
  'schedule' => schedule,
  _ => AiSearchInstanceCreateJobResponseResultSource._(json),
}; }

static const AiSearchInstanceCreateJobResponseResultSource user = AiSearchInstanceCreateJobResponseResultSource._('user');

static const AiSearchInstanceCreateJobResponseResultSource schedule = AiSearchInstanceCreateJobResponseResultSource._('schedule');

static const List<AiSearchInstanceCreateJobResponseResultSource> values = [user, schedule];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceCreateJobResponseResultSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchInstanceCreateJobResponseResultSource($value)'; } 
 }
@immutable final class AiSearchInstanceCreateJobResponseResult {const AiSearchInstanceCreateJobResponseResult({required this.id, required this.source, this.description, this.endReason, this.endedAt, this.lastSeenAt, this.startedAt, });

factory AiSearchInstanceCreateJobResponseResult.fromJson(Map<String, dynamic> json) { return AiSearchInstanceCreateJobResponseResult(
  description: json['description'] as String?,
  endReason: json['end_reason'] as String?,
  endedAt: json['ended_at'] as String?,
  id: json['id'] as String,
  lastSeenAt: json['last_seen_at'] as String?,
  source: AiSearchInstanceCreateJobResponseResultSource.fromJson(json['source'] as String),
  startedAt: json['started_at'] as String?,
); }

final String? description;

final String? endReason;

final String? endedAt;

final String id;

final String? lastSeenAt;

final AiSearchInstanceCreateJobResponseResultSource source;

final String? startedAt;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'end_reason': ?endReason,
  'ended_at': ?endedAt,
  'id': id,
  'last_seen_at': ?lastSeenAt,
  'source': source.toJson(),
  'started_at': ?startedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('source'); } 
AiSearchInstanceCreateJobResponseResult copyWith({String Function()? description, String Function()? endReason, String Function()? endedAt, String? id, String Function()? lastSeenAt, AiSearchInstanceCreateJobResponseResultSource? source, String Function()? startedAt, }) { return AiSearchInstanceCreateJobResponseResult(
  description: description != null ? description() : this.description,
  endReason: endReason != null ? endReason() : this.endReason,
  endedAt: endedAt != null ? endedAt() : this.endedAt,
  id: id ?? this.id,
  lastSeenAt: lastSeenAt != null ? lastSeenAt() : this.lastSeenAt,
  source: source ?? this.source,
  startedAt: startedAt != null ? startedAt() : this.startedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceCreateJobResponseResult &&
          description == other.description &&
          endReason == other.endReason &&
          endedAt == other.endedAt &&
          id == other.id &&
          lastSeenAt == other.lastSeenAt &&
          source == other.source &&
          startedAt == other.startedAt; } 
@override int get hashCode { return Object.hash(description, endReason, endedAt, id, lastSeenAt, source, startedAt); } 
@override String toString() { return 'AiSearchInstanceCreateJobResponseResult(description: $description, endReason: $endReason, endedAt: $endedAt, id: $id, lastSeenAt: $lastSeenAt, source: $source, startedAt: $startedAt)'; } 
 }
