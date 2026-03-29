// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetTaxRegistrationsStatus {const GetTaxRegistrationsStatus._(this.value);

factory GetTaxRegistrationsStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'all' => all,
  'expired' => expired,
  'scheduled' => scheduled,
  _ => GetTaxRegistrationsStatus._(json),
}; }

static const GetTaxRegistrationsStatus active = GetTaxRegistrationsStatus._('active');

static const GetTaxRegistrationsStatus all = GetTaxRegistrationsStatus._('all');

static const GetTaxRegistrationsStatus expired = GetTaxRegistrationsStatus._('expired');

static const GetTaxRegistrationsStatus scheduled = GetTaxRegistrationsStatus._('scheduled');

static const List<GetTaxRegistrationsStatus> values = [active, all, expired, scheduled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTaxRegistrationsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetTaxRegistrationsStatus($value)'; } 
 }
