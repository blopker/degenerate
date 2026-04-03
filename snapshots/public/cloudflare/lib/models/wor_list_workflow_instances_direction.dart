// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// should only be used when `cursor` is used, defines a new direction for the cursor
@immutable final class WorListWorkflowInstancesDirection {const WorListWorkflowInstancesDirection._(this.value);

factory WorListWorkflowInstancesDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => WorListWorkflowInstancesDirection._(json),
}; }

static const WorListWorkflowInstancesDirection asc = WorListWorkflowInstancesDirection._('asc');

static const WorListWorkflowInstancesDirection desc = WorListWorkflowInstancesDirection._('desc');

static const List<WorListWorkflowInstancesDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorListWorkflowInstancesDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorListWorkflowInstancesDirection($value)'; } 
 }
