// GENERATED CODE - DO NOT MODIFY BY HAND

/// Field to order DNS views by.
final class DnsSettingsOrder {const DnsSettingsOrder._(this.value);

factory DnsSettingsOrder.fromJson(String json) { return switch (json) {
  'name' => $name,
  'created_on' => createdOn,
  'modified_on' => modifiedOn,
  _ => DnsSettingsOrder._(json),
}; }

static const DnsSettingsOrder $name = DnsSettingsOrder._('name');

static const DnsSettingsOrder createdOn = DnsSettingsOrder._('created_on');

static const DnsSettingsOrder modifiedOn = DnsSettingsOrder._('modified_on');

static const List<DnsSettingsOrder> values = [$name, createdOn, modifiedOn];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsSettingsOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsSettingsOrder($value)'; } 
 }
