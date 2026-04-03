// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// State of a code scanning alert.
@immutable final class CodeScanningAlertStateQuery {const CodeScanningAlertStateQuery._(this.value);

factory CodeScanningAlertStateQuery.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  'dismissed' => dismissed,
  'fixed' => fixed,
  _ => CodeScanningAlertStateQuery._(json),
}; }

static const CodeScanningAlertStateQuery open = CodeScanningAlertStateQuery._('open');

static const CodeScanningAlertStateQuery closed = CodeScanningAlertStateQuery._('closed');

static const CodeScanningAlertStateQuery dismissed = CodeScanningAlertStateQuery._('dismissed');

static const CodeScanningAlertStateQuery fixed = CodeScanningAlertStateQuery._('fixed');

static const List<CodeScanningAlertStateQuery> values = [open, closed, dismissed, fixed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningAlertStateQuery && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningAlertStateQuery($value)'; } 
 }
