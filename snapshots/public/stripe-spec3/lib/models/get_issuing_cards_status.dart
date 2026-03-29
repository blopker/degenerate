// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetIssuingCardsStatus {const GetIssuingCardsStatus._(this.value);

factory GetIssuingCardsStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'canceled' => canceled,
  'inactive' => inactive,
  _ => GetIssuingCardsStatus._(json),
}; }

static const GetIssuingCardsStatus active = GetIssuingCardsStatus._('active');

static const GetIssuingCardsStatus canceled = GetIssuingCardsStatus._('canceled');

static const GetIssuingCardsStatus inactive = GetIssuingCardsStatus._('inactive');

static const List<GetIssuingCardsStatus> values = [active, canceled, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetIssuingCardsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetIssuingCardsStatus($value)'; } 
 }
