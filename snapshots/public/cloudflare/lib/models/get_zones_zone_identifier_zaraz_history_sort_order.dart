// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetZonesZoneIdentifierZarazHistorySortOrder {const GetZonesZoneIdentifierZarazHistorySortOrder._(this.value);

factory GetZonesZoneIdentifierZarazHistorySortOrder.fromJson(String json) { return switch (json) {
  'DESC' => desc,
  'ASC' => asc,
  _ => GetZonesZoneIdentifierZarazHistorySortOrder._(json),
}; }

static const GetZonesZoneIdentifierZarazHistorySortOrder desc = GetZonesZoneIdentifierZarazHistorySortOrder._('DESC');

static const GetZonesZoneIdentifierZarazHistorySortOrder asc = GetZonesZoneIdentifierZarazHistorySortOrder._('ASC');

static const List<GetZonesZoneIdentifierZarazHistorySortOrder> values = [desc, asc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetZonesZoneIdentifierZarazHistorySortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetZonesZoneIdentifierZarazHistorySortOrder($value)'; } 
 }
