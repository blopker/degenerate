// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_min_tls_version_value.dart';/// Only accepts HTTPS requests that use at least the TLS protocol version specified. For example, if TLS 1.1 is selected, TLS 1.0 connections will be rejected, while 1.1, 1.2, and 1.3 (if enabled) will be permitted.
@immutable final class ZonesMinTlsVersionRequest {const ZonesMinTlsVersionRequest({required this.id, required this.value, });

factory ZonesMinTlsVersionRequest.fromJson(Map<String, dynamic> json) { return ZonesMinTlsVersionRequest(
  id: json['id'],
  value: ZonesMinTlsVersionValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesMinTlsVersionValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesMinTlsVersionRequest copyWith({dynamic Function()? id, ZonesMinTlsVersionValue? value, }) { return ZonesMinTlsVersionRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesMinTlsVersionRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesMinTlsVersionRequest(id: $id, value: $value)'; } 
 }
