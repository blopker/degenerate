// GENERATED CODE - DO NOT MODIFY BY HAND

import 'lists_completed.dart';import 'lists_operation_id.dart';/// The current status of the asynchronous operation.
final class ListsBulkOperationFailedStatus {const ListsBulkOperationFailedStatus._(this.value);

factory ListsBulkOperationFailedStatus.fromJson(String json) { return switch (json) {
  'failed' => failed,
  _ => ListsBulkOperationFailedStatus._(json),
}; }

static const ListsBulkOperationFailedStatus failed = ListsBulkOperationFailedStatus._('failed');

static const List<ListsBulkOperationFailedStatus> values = [failed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListsBulkOperationFailedStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListsBulkOperationFailedStatus($value)'; } 
 }
final class ListsBulkOperationFailed {const ListsBulkOperationFailed({required this.completed, required this.error, required this.id, required this.status, });

factory ListsBulkOperationFailed.fromJson(Map<String, dynamic> json) { return ListsBulkOperationFailed(
  completed: ListsCompleted.fromJson(json['completed'] as String),
  error: json['error'] as String,
  id: ListsOperationId.fromJson(json['id'] as String),
  status: ListsBulkOperationFailedStatus.fromJson(json['status'] as String),
); }

final ListsCompleted completed;

/// A message describing the error when the status is `failed`.
final String error;

final ListsOperationId id;

/// The current status of the asynchronous operation.
final ListsBulkOperationFailedStatus status;

Map<String, dynamic> toJson() { return {
  'completed': completed.toJson(),
  'error': error,
  'id': id.toJson(),
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('completed') &&
      json.containsKey('error') && json['error'] is String &&
      json.containsKey('id') &&
      json.containsKey('status'); } 
ListsBulkOperationFailed copyWith({ListsCompleted? completed, String? error, ListsOperationId? id, ListsBulkOperationFailedStatus? status, }) { return ListsBulkOperationFailed(
  completed: completed ?? this.completed,
  error: error ?? this.error,
  id: id ?? this.id,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsBulkOperationFailed &&
          completed == other.completed &&
          error == other.error &&
          id == other.id &&
          status == other.status; } 
@override int get hashCode { return Object.hash(completed, error, id, status); } 
@override String toString() { return 'ListsBulkOperationFailed(completed: $completed, error: $error, id: $id, status: $status)'; } 
 }
