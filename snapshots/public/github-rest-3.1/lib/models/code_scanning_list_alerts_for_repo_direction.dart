// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CodeScanningListAlertsForRepoDirection {const CodeScanningListAlertsForRepoDirection._(this.value);

factory CodeScanningListAlertsForRepoDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => CodeScanningListAlertsForRepoDirection._(json),
}; }

static const CodeScanningListAlertsForRepoDirection asc = CodeScanningListAlertsForRepoDirection._('asc');

static const CodeScanningListAlertsForRepoDirection desc = CodeScanningListAlertsForRepoDirection._('desc');

static const List<CodeScanningListAlertsForRepoDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertsForRepoDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningListAlertsForRepoDirection($value)'; } 
 }
