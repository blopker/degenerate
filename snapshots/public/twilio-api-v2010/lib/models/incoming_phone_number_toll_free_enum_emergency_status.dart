// GENERATED CODE - DO NOT MODIFY BY HAND

/// The parameter displays if emergency calling is enabled for this number. Active numbers may place emergency calls by dialing valid emergency numbers for the country.
final class IncomingPhoneNumberTollFreeEnumEmergencyStatus {const IncomingPhoneNumberTollFreeEnumEmergencyStatus._(this.value);

factory IncomingPhoneNumberTollFreeEnumEmergencyStatus.fromJson(String json) { return switch (json) {
  'Active' => active,
  'Inactive' => inactive,
  _ => IncomingPhoneNumberTollFreeEnumEmergencyStatus._(json),
}; }

static const IncomingPhoneNumberTollFreeEnumEmergencyStatus active = IncomingPhoneNumberTollFreeEnumEmergencyStatus._('Active');

static const IncomingPhoneNumberTollFreeEnumEmergencyStatus inactive = IncomingPhoneNumberTollFreeEnumEmergencyStatus._('Inactive');

static const List<IncomingPhoneNumberTollFreeEnumEmergencyStatus> values = [active, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IncomingPhoneNumberTollFreeEnumEmergencyStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IncomingPhoneNumberTollFreeEnumEmergencyStatus($value)'; } 
 }
