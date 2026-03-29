// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposListForOrgDirection {const ReposListForOrgDirection._(this.value);

factory ReposListForOrgDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ReposListForOrgDirection._(json),
}; }

static const ReposListForOrgDirection asc = ReposListForOrgDirection._('asc');

static const ReposListForOrgDirection desc = ReposListForOrgDirection._('desc');

static const List<ReposListForOrgDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListForOrgDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposListForOrgDirection($value)'; } 
 }
