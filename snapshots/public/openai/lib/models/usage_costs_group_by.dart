// GENERATED CODE - DO NOT MODIFY BY HAND

final class UsageCostsGroupBy {const UsageCostsGroupBy._(this.value);

factory UsageCostsGroupBy.fromJson(String json) { return switch (json) {
  'project_id' => projectId,
  'line_item' => lineItem,
  _ => UsageCostsGroupBy._(json),
}; }

static const UsageCostsGroupBy projectId = UsageCostsGroupBy._('project_id');

static const UsageCostsGroupBy lineItem = UsageCostsGroupBy._('line_item');

static const List<UsageCostsGroupBy> values = [projectId, lineItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageCostsGroupBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageCostsGroupBy($value)'; } 
 }
