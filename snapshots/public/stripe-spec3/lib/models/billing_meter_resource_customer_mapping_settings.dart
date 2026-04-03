// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The method for mapping a meter event to a customer.
@immutable final class BillingMeterResourceCustomerMappingSettingsType {const BillingMeterResourceCustomerMappingSettingsType._(this.value);

factory BillingMeterResourceCustomerMappingSettingsType.fromJson(String json) { return switch (json) {
  'by_id' => byId,
  _ => BillingMeterResourceCustomerMappingSettingsType._(json),
}; }

static const BillingMeterResourceCustomerMappingSettingsType byId = BillingMeterResourceCustomerMappingSettingsType._('by_id');

static const List<BillingMeterResourceCustomerMappingSettingsType> values = [byId];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingMeterResourceCustomerMappingSettingsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingMeterResourceCustomerMappingSettingsType($value)'; } 
 }
/// 
@immutable final class BillingMeterResourceCustomerMappingSettings {const BillingMeterResourceCustomerMappingSettings({required this.eventPayloadKey, required this.type, });

factory BillingMeterResourceCustomerMappingSettings.fromJson(Map<String, dynamic> json) { return BillingMeterResourceCustomerMappingSettings(
  eventPayloadKey: json['event_payload_key'] as String,
  type: BillingMeterResourceCustomerMappingSettingsType.fromJson(json['type'] as String),
); }

/// The key in the meter event payload to use for mapping the event to a customer.
final String eventPayloadKey;

/// The method for mapping a meter event to a customer.
final BillingMeterResourceCustomerMappingSettingsType type;

Map<String, dynamic> toJson() { return {
  'event_payload_key': eventPayloadKey,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_payload_key') && json['event_payload_key'] is String &&
      json.containsKey('type'); } 
BillingMeterResourceCustomerMappingSettings copyWith({String? eventPayloadKey, BillingMeterResourceCustomerMappingSettingsType? type, }) { return BillingMeterResourceCustomerMappingSettings(
  eventPayloadKey: eventPayloadKey ?? this.eventPayloadKey,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingMeterResourceCustomerMappingSettings &&
          eventPayloadKey == other.eventPayloadKey &&
          type == other.type; } 
@override int get hashCode { return Object.hash(eventPayloadKey, type); } 
@override String toString() { return 'BillingMeterResourceCustomerMappingSettings(eventPayloadKey: $eventPayloadKey, type: $type)'; } 
 }
