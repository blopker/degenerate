// GENERATED CODE - DO NOT MODIFY BY HAND

final class ActivityListReposStarredByAuthenticatedUserSort {const ActivityListReposStarredByAuthenticatedUserSort._(this.value);

factory ActivityListReposStarredByAuthenticatedUserSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  _ => ActivityListReposStarredByAuthenticatedUserSort._(json),
}; }

static const ActivityListReposStarredByAuthenticatedUserSort created = ActivityListReposStarredByAuthenticatedUserSort._('created');

static const ActivityListReposStarredByAuthenticatedUserSort updated = ActivityListReposStarredByAuthenticatedUserSort._('updated');

static const List<ActivityListReposStarredByAuthenticatedUserSort> values = [created, updated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListReposStarredByAuthenticatedUserSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ActivityListReposStarredByAuthenticatedUserSort($value)'; } 
 }
