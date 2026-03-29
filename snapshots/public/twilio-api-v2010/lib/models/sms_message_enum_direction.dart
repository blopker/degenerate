// GENERATED CODE - DO NOT MODIFY BY HAND

final class SmsMessageEnumDirection {const SmsMessageEnumDirection._(this.value);

factory SmsMessageEnumDirection.fromJson(String json) { return switch (json) {
  'inbound' => inbound,
  'outbound-api' => outboundApi,
  'outbound-call' => outboundCall,
  'outbound-reply' => outboundReply,
  _ => SmsMessageEnumDirection._(json),
}; }

static const SmsMessageEnumDirection inbound = SmsMessageEnumDirection._('inbound');

static const SmsMessageEnumDirection outboundApi = SmsMessageEnumDirection._('outbound-api');

static const SmsMessageEnumDirection outboundCall = SmsMessageEnumDirection._('outbound-call');

static const SmsMessageEnumDirection outboundReply = SmsMessageEnumDirection._('outbound-reply');

static const List<SmsMessageEnumDirection> values = [inbound, outboundApi, outboundCall, outboundReply];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmsMessageEnumDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmsMessageEnumDirection($value)'; } 
 }
