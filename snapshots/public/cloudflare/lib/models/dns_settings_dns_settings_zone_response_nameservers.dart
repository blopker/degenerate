// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Nameserver type
@immutable final class DnsSettingsDnsSettingsZoneResponseNameserversType {const DnsSettingsDnsSettingsZoneResponseNameserversType._(this.value);

factory DnsSettingsDnsSettingsZoneResponseNameserversType.fromJson(String json) { return switch (json) {
  'cloudflare.standard' => cloudflareStandard,
  'custom.account' => customAccount,
  'custom.tenant' => customTenant,
  'custom.zone' => customZone,
  _ => DnsSettingsDnsSettingsZoneResponseNameserversType._(json),
}; }

static const DnsSettingsDnsSettingsZoneResponseNameserversType cloudflareStandard = DnsSettingsDnsSettingsZoneResponseNameserversType._('cloudflare.standard');

static const DnsSettingsDnsSettingsZoneResponseNameserversType customAccount = DnsSettingsDnsSettingsZoneResponseNameserversType._('custom.account');

static const DnsSettingsDnsSettingsZoneResponseNameserversType customTenant = DnsSettingsDnsSettingsZoneResponseNameserversType._('custom.tenant');

static const DnsSettingsDnsSettingsZoneResponseNameserversType customZone = DnsSettingsDnsSettingsZoneResponseNameserversType._('custom.zone');

static const List<DnsSettingsDnsSettingsZoneResponseNameserversType> values = [cloudflareStandard, customAccount, customTenant, customZone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsSettingsDnsSettingsZoneResponseNameserversType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsSettingsDnsSettingsZoneResponseNameserversType($value)'; } 
 }
/// Settings determining the nameservers through which the zone should be available.
@immutable final class DnsSettingsDnsSettingsZoneResponseNameservers {const DnsSettingsDnsSettingsZoneResponseNameservers({required this.type, this.nsSet, });

factory DnsSettingsDnsSettingsZoneResponseNameservers.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsSettingsZoneResponseNameservers(
  nsSet: json['ns_set'] != null ? (json['ns_set'] as num).toInt() : null,
  type: DnsSettingsDnsSettingsZoneResponseNameserversType.fromJson(json['type'] as String),
); }

/// Configured nameserver set to be used for this zone
final int? nsSet;

/// Nameserver type
final DnsSettingsDnsSettingsZoneResponseNameserversType type;

Map<String, dynamic> toJson() { return {
  'ns_set': ?nsSet,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
DnsSettingsDnsSettingsZoneResponseNameservers copyWith({int Function()? nsSet, DnsSettingsDnsSettingsZoneResponseNameserversType? type, }) { return DnsSettingsDnsSettingsZoneResponseNameservers(
  nsSet: nsSet != null ? nsSet() : this.nsSet,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsSettingsZoneResponseNameservers &&
          nsSet == other.nsSet &&
          type == other.type; } 
@override int get hashCode { return Object.hash(nsSet, type); } 
@override String toString() { return 'DnsSettingsDnsSettingsZoneResponseNameservers(nsSet: $nsSet, type: $type)'; } 
 }
