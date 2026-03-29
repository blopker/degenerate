// GENERATED CODE - DO NOT MODIFY BY HAND

/// Field to order DNS records by.
final class DnsRecordsOrder {const DnsRecordsOrder._(this.value);

factory DnsRecordsOrder.fromJson(String json) { return switch (json) {
  'type' => type,
  'name' => $name,
  'content' => content,
  'ttl' => ttl,
  'proxied' => proxied,
  _ => DnsRecordsOrder._(json),
}; }

static const DnsRecordsOrder type = DnsRecordsOrder._('type');

static const DnsRecordsOrder $name = DnsRecordsOrder._('name');

static const DnsRecordsOrder content = DnsRecordsOrder._('content');

static const DnsRecordsOrder ttl = DnsRecordsOrder._('ttl');

static const DnsRecordsOrder proxied = DnsRecordsOrder._('proxied');

static const List<DnsRecordsOrder> values = [type, $name, content, ttl, proxied];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsRecordsOrder($value)'; } 
 }
