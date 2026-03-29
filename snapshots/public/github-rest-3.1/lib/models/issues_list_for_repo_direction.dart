// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesListForRepoDirection {const IssuesListForRepoDirection._(this.value);

factory IssuesListForRepoDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => IssuesListForRepoDirection._(json),
}; }

static const IssuesListForRepoDirection asc = IssuesListForRepoDirection._('asc');

static const IssuesListForRepoDirection desc = IssuesListForRepoDirection._('desc');

static const List<IssuesListForRepoDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListForRepoDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuesListForRepoDirection($value)'; } 
 }
