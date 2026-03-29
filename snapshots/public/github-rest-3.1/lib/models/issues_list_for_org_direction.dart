// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesListForOrgDirection {const IssuesListForOrgDirection._(this.value);

factory IssuesListForOrgDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => IssuesListForOrgDirection._(json),
}; }

static const IssuesListForOrgDirection asc = IssuesListForOrgDirection._('asc');

static const IssuesListForOrgDirection desc = IssuesListForOrgDirection._('desc');

static const List<IssuesListForOrgDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListForOrgDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuesListForOrgDirection($value)'; } 
 }
