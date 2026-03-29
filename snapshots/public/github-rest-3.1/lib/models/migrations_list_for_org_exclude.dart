// GENERATED CODE - DO NOT MODIFY BY HAND

/// Allowed values that can be passed to the exclude param.
final class MigrationsListForOrgExclude {const MigrationsListForOrgExclude._(this.value);

factory MigrationsListForOrgExclude.fromJson(String json) { return switch (json) {
  'repositories' => repositories,
  _ => MigrationsListForOrgExclude._(json),
}; }

static const MigrationsListForOrgExclude repositories = MigrationsListForOrgExclude._('repositories');

static const List<MigrationsListForOrgExclude> values = [repositories];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsListForOrgExclude && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MigrationsListForOrgExclude($value)'; } 
 }
