// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesListCommentsForRepoSort {const IssuesListCommentsForRepoSort._(this.value);

factory IssuesListCommentsForRepoSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  _ => IssuesListCommentsForRepoSort._(json),
}; }

static const IssuesListCommentsForRepoSort created = IssuesListCommentsForRepoSort._('created');

static const IssuesListCommentsForRepoSort updated = IssuesListCommentsForRepoSort._('updated');

static const List<IssuesListCommentsForRepoSort> values = [created, updated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListCommentsForRepoSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuesListCommentsForRepoSort($value)'; } 
 }
