// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The status code to use for the URL redirect. 301 is a permanent
/// redirect. 302 is a temporary redirect.
/// 
@immutable final class ZonesForwardingUrlValueStatusCode {const ZonesForwardingUrlValueStatusCode._(this.value);

factory ZonesForwardingUrlValueStatusCode.fromJson(int json) { return switch (json) {
  301 => $301,
  302 => $302,
  _ => ZonesForwardingUrlValueStatusCode._(json),
}; }

static const ZonesForwardingUrlValueStatusCode $301 = ZonesForwardingUrlValueStatusCode._(301);

static const ZonesForwardingUrlValueStatusCode $302 = ZonesForwardingUrlValueStatusCode._(302);

static const List<ZonesForwardingUrlValueStatusCode> values = [$301, $302];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesForwardingUrlValueStatusCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesForwardingUrlValueStatusCode($value)'; } 
 }
@immutable final class ZonesForwardingUrlValue {const ZonesForwardingUrlValue({this.statusCode, this.url, });

factory ZonesForwardingUrlValue.fromJson(Map<String, dynamic> json) { return ZonesForwardingUrlValue(
  statusCode: json['status_code'] != null ? ZonesForwardingUrlValueStatusCode.fromJson((json['status_code'] as num).toInt()) : null,
  url: json['url'] as String?,
); }

/// The status code to use for the URL redirect. 301 is a permanent
/// redirect. 302 is a temporary redirect.
/// 
final ZonesForwardingUrlValueStatusCode? statusCode;

/// The URL to redirect the request to.
/// Notes: ${num} refers to the position of '*' in the constraint value.
final String? url;

Map<String, dynamic> toJson() { return {
  if (statusCode != null) 'status_code': statusCode?.toJson(),
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status_code', 'url'}.contains(key)); } 
ZonesForwardingUrlValue copyWith({ZonesForwardingUrlValueStatusCode Function()? statusCode, String Function()? url, }) { return ZonesForwardingUrlValue(
  statusCode: statusCode != null ? statusCode() : this.statusCode,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesForwardingUrlValue &&
          statusCode == other.statusCode &&
          url == other.url; } 
@override int get hashCode { return Object.hash(statusCode, url); } 
@override String toString() { return 'ZonesForwardingUrlValue(statusCode: $statusCode, url: $url)'; } 
 }
