// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesListSort {const IssuesListSort._(this.value);

factory IssuesListSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  'comments' => comments,
  _ => IssuesListSort._(json),
}; }

static const IssuesListSort created = IssuesListSort._('created');

static const IssuesListSort updated = IssuesListSort._('updated');

static const IssuesListSort comments = IssuesListSort._('comments');

static const List<IssuesListSort> values = [created, updated, comments];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuesListSort($value)'; } 
 }
