// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposListForUserSort {const ReposListForUserSort._(this.value);

factory ReposListForUserSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  'pushed' => pushed,
  'full_name' => fullName,
  _ => ReposListForUserSort._(json),
}; }

static const ReposListForUserSort created = ReposListForUserSort._('created');

static const ReposListForUserSort updated = ReposListForUserSort._('updated');

static const ReposListForUserSort pushed = ReposListForUserSort._('pushed');

static const ReposListForUserSort fullName = ReposListForUserSort._('full_name');

static const List<ReposListForUserSort> values = [created, updated, pushed, fullName];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListForUserSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposListForUserSort($value)'; } 
 }
