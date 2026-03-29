// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesListDirection {const IssuesListDirection._(this.value);

factory IssuesListDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => IssuesListDirection._(json),
}; }

static const IssuesListDirection asc = IssuesListDirection._('asc');

static const IssuesListDirection desc = IssuesListDirection._('desc');

static const List<IssuesListDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuesListDirection($value)'; } 
 }
