// GENERATED CODE - DO NOT MODIFY BY HAND

final class OrgsListOutsideCollaboratorsFilter {const OrgsListOutsideCollaboratorsFilter._(this.value);

factory OrgsListOutsideCollaboratorsFilter.fromJson(String json) { return switch (json) {
  '2fa_disabled' => $2faDisabled,
  '2fa_insecure' => $2faInsecure,
  'all' => all,
  _ => OrgsListOutsideCollaboratorsFilter._(json),
}; }

static const OrgsListOutsideCollaboratorsFilter $2faDisabled = OrgsListOutsideCollaboratorsFilter._('2fa_disabled');

static const OrgsListOutsideCollaboratorsFilter $2faInsecure = OrgsListOutsideCollaboratorsFilter._('2fa_insecure');

static const OrgsListOutsideCollaboratorsFilter all = OrgsListOutsideCollaboratorsFilter._('all');

static const List<OrgsListOutsideCollaboratorsFilter> values = [$2faDisabled, $2faInsecure, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListOutsideCollaboratorsFilter && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgsListOutsideCollaboratorsFilter($value)'; } 
 }
