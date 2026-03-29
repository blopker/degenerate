// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_get_custom_domain_response_status.dart';/// Minimum TLS Version the custom domain will accept for incoming connections. If not set, defaults to 1.0.
final class R2GetCustomDomainResponseMinTls {const R2GetCustomDomainResponseMinTls._(this.value);

factory R2GetCustomDomainResponseMinTls.fromJson(String json) { return switch (json) {
  '1.0' => $10,
  '1.1' => $11,
  '1.2' => $12,
  '1.3' => $13,
  _ => R2GetCustomDomainResponseMinTls._(json),
}; }

static const R2GetCustomDomainResponseMinTls $10 = R2GetCustomDomainResponseMinTls._('1.0');

static const R2GetCustomDomainResponseMinTls $11 = R2GetCustomDomainResponseMinTls._('1.1');

static const R2GetCustomDomainResponseMinTls $12 = R2GetCustomDomainResponseMinTls._('1.2');

static const R2GetCustomDomainResponseMinTls $13 = R2GetCustomDomainResponseMinTls._('1.3');

static const List<R2GetCustomDomainResponseMinTls> values = [$10, $11, $12, $13];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2GetCustomDomainResponseMinTls && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2GetCustomDomainResponseMinTls($value)'; } 
 }
final class R2GetCustomDomainResponse {const R2GetCustomDomainResponse({this.ciphers, required this.domain, required this.enabled, this.minTls, required this.status, this.zoneId, this.zoneName, });

factory R2GetCustomDomainResponse.fromJson(Map<String, dynamic> json) { return R2GetCustomDomainResponse(
  ciphers: (json['ciphers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  domain: json['domain'] as String,
  enabled: json['enabled'] as bool,
  minTls: json['minTLS'] != null ? R2GetCustomDomainResponseMinTls.fromJson(json['minTLS'] as String) : null,
  status: R2GetCustomDomainResponseStatus.fromJson(json['status'] as Map<String, dynamic>),
  zoneId: json['zoneId'] as String?,
  zoneName: json['zoneName'] as String?,
); }

/// An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
final List<String>? ciphers;

/// Domain name of the custom domain to be added.
final String domain;

/// Whether this bucket is publicly accessible at the specified custom domain.
final bool enabled;

/// Minimum TLS Version the custom domain will accept for incoming connections. If not set, defaults to 1.0.
final R2GetCustomDomainResponseMinTls? minTls;

final R2GetCustomDomainResponseStatus status;

/// Zone ID of the custom domain resides in.
final String? zoneId;

/// Zone that the custom domain resides in.
final String? zoneName;

Map<String, dynamic> toJson() { return {
  'ciphers': ?ciphers,
  'domain': domain,
  'enabled': enabled,
  if (minTls != null) 'minTLS': minTls?.toJson(),
  'status': status.toJson(),
  'zoneId': ?zoneId,
  'zoneName': ?zoneName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('domain') && json['domain'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('status'); } 
R2GetCustomDomainResponse copyWith({List<String> Function()? ciphers, String? domain, bool? enabled, R2GetCustomDomainResponseMinTls Function()? minTls, R2GetCustomDomainResponseStatus? status, String Function()? zoneId, String Function()? zoneName, }) { return R2GetCustomDomainResponse(
  ciphers: ciphers != null ? ciphers() : this.ciphers,
  domain: domain ?? this.domain,
  enabled: enabled ?? this.enabled,
  minTls: minTls != null ? minTls() : this.minTls,
  status: status ?? this.status,
  zoneId: zoneId != null ? zoneId() : this.zoneId,
  zoneName: zoneName != null ? zoneName() : this.zoneName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2GetCustomDomainResponse &&
          listEquals(ciphers, other.ciphers) &&
          domain == other.domain &&
          enabled == other.enabled &&
          minTls == other.minTls &&
          status == other.status &&
          zoneId == other.zoneId &&
          zoneName == other.zoneName; } 
@override int get hashCode { return Object.hash(Object.hashAll(ciphers ?? const []), domain, enabled, minTls, status, zoneId, zoneName); } 
@override String toString() { return 'R2GetCustomDomainResponse(ciphers: $ciphers, domain: $domain, enabled: $enabled, minTls: $minTls, status: $status, zoneId: $zoneId, zoneName: $zoneName)'; } 
 }
