// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ActionsListJobsForWorkflowRunFilter {const ActionsListJobsForWorkflowRunFilter._(this.value);

factory ActionsListJobsForWorkflowRunFilter.fromJson(String json) { return switch (json) {
  'latest' => latest,
  'all' => all,
  _ => ActionsListJobsForWorkflowRunFilter._(json),
}; }

static const ActionsListJobsForWorkflowRunFilter latest = ActionsListJobsForWorkflowRunFilter._('latest');

static const ActionsListJobsForWorkflowRunFilter all = ActionsListJobsForWorkflowRunFilter._('all');

static const List<ActionsListJobsForWorkflowRunFilter> values = [latest, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsListJobsForWorkflowRunFilter && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ActionsListJobsForWorkflowRunFilter($value)'; } 
 }
