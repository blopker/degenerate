// GENERATED CODE - DO NOT MODIFY BY HAND

final class SmsMessageEnumUpdateStatus {const SmsMessageEnumUpdateStatus._(this.value);

factory SmsMessageEnumUpdateStatus.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  _ => SmsMessageEnumUpdateStatus._(json),
}; }

static const SmsMessageEnumUpdateStatus canceled = SmsMessageEnumUpdateStatus._('canceled');

static const List<SmsMessageEnumUpdateStatus> values = [canceled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmsMessageEnumUpdateStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmsMessageEnumUpdateStatus($value)'; } 
 }
