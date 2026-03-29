// GENERATED CODE - DO NOT MODIFY BY HAND

/// When true, omits step details and returns only metadata with step_count.
final class WorDescribeWorkflowInstanceSimple {const WorDescribeWorkflowInstanceSimple._(this.value);

factory WorDescribeWorkflowInstanceSimple.fromJson(String json) { return switch (json) {
  'true' => $true,
  'false' => $false,
  _ => WorDescribeWorkflowInstanceSimple._(json),
}; }

static const WorDescribeWorkflowInstanceSimple $true = WorDescribeWorkflowInstanceSimple._('true');

static const WorDescribeWorkflowInstanceSimple $false = WorDescribeWorkflowInstanceSimple._('false');

static const List<WorDescribeWorkflowInstanceSimple> values = [$true, $false];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDescribeWorkflowInstanceSimple && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorDescribeWorkflowInstanceSimple($value)'; } 
 }
