// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_security_header_value_strict_transport_security.dart';final class ZonesSecurityHeaderValue {const ZonesSecurityHeaderValue({this.strictTransportSecurity});

factory ZonesSecurityHeaderValue.fromJson(Map<String, dynamic> json) { return ZonesSecurityHeaderValue(
  strictTransportSecurity: json['strict_transport_security'] != null ? ZonesSecurityHeaderValueStrictTransportSecurity.fromJson(json['strict_transport_security'] as Map<String, dynamic>) : null,
); }

/// Strict Transport Security.
final ZonesSecurityHeaderValueStrictTransportSecurity? strictTransportSecurity;

Map<String, dynamic> toJson() { return {
  if (strictTransportSecurity != null) 'strict_transport_security': strictTransportSecurity?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZonesSecurityHeaderValue copyWith({ZonesSecurityHeaderValueStrictTransportSecurity Function()? strictTransportSecurity}) { return ZonesSecurityHeaderValue(
  strictTransportSecurity: strictTransportSecurity != null ? strictTransportSecurity() : this.strictTransportSecurity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSecurityHeaderValue &&
          strictTransportSecurity == other.strictTransportSecurity; } 
@override int get hashCode { return strictTransportSecurity.hashCode; } 
@override String toString() { return 'ZonesSecurityHeaderValue(strictTransportSecurity: $strictTransportSecurity)'; } 
 }
