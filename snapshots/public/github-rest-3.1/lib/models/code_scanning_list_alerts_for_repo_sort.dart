// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CodeScanningListAlertsForRepoSort {const CodeScanningListAlertsForRepoSort._(this.value);

factory CodeScanningListAlertsForRepoSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  _ => CodeScanningListAlertsForRepoSort._(json),
}; }

static const CodeScanningListAlertsForRepoSort created = CodeScanningListAlertsForRepoSort._('created');

static const CodeScanningListAlertsForRepoSort updated = CodeScanningListAlertsForRepoSort._('updated');

static const List<CodeScanningListAlertsForRepoSort> values = [created, updated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertsForRepoSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningListAlertsForRepoSort($value)'; } 
 }
