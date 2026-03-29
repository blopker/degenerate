// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesListMilestonesSort {const IssuesListMilestonesSort._(this.value);

factory IssuesListMilestonesSort.fromJson(String json) { return switch (json) {
  'due_on' => dueOn,
  'completeness' => completeness,
  _ => IssuesListMilestonesSort._(json),
}; }

static const IssuesListMilestonesSort dueOn = IssuesListMilestonesSort._('due_on');

static const IssuesListMilestonesSort completeness = IssuesListMilestonesSort._('completeness');

static const List<IssuesListMilestonesSort> values = [dueOn, completeness];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListMilestonesSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuesListMilestonesSort($value)'; } 
 }
