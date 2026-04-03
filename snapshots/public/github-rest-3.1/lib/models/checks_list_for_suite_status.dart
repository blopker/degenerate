// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ChecksListForSuiteStatus {const ChecksListForSuiteStatus._(this.value);

factory ChecksListForSuiteStatus.fromJson(String json) { return switch (json) {
  'queued' => queued,
  'in_progress' => inProgress,
  'completed' => completed,
  _ => ChecksListForSuiteStatus._(json),
}; }

static const ChecksListForSuiteStatus queued = ChecksListForSuiteStatus._('queued');

static const ChecksListForSuiteStatus inProgress = ChecksListForSuiteStatus._('in_progress');

static const ChecksListForSuiteStatus completed = ChecksListForSuiteStatus._('completed');

static const List<ChecksListForSuiteStatus> values = [queued, inProgress, completed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChecksListForSuiteStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChecksListForSuiteStatus($value)'; } 
 }
