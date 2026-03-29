// GENERATED CODE - DO NOT MODIFY BY HAND

final class UsageCompletionsBucketWidth {const UsageCompletionsBucketWidth._(this.value);

factory UsageCompletionsBucketWidth.fromJson(String json) { return switch (json) {
  '1m' => $1m,
  '1h' => $1h,
  '1d' => $1d,
  _ => UsageCompletionsBucketWidth._(json),
}; }

static const UsageCompletionsBucketWidth $1m = UsageCompletionsBucketWidth._('1m');

static const UsageCompletionsBucketWidth $1h = UsageCompletionsBucketWidth._('1h');

static const UsageCompletionsBucketWidth $1d = UsageCompletionsBucketWidth._('1d');

static const List<UsageCompletionsBucketWidth> values = [$1m, $1h, $1d];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageCompletionsBucketWidth && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageCompletionsBucketWidth($value)'; } 
 }
