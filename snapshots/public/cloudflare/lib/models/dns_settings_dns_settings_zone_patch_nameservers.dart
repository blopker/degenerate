// GENERATED CODE - DO NOT MODIFY BY HAND

/// Nameserver type
final class DnsSettingsDnsSettingsZonePatchNameserversType {const DnsSettingsDnsSettingsZonePatchNameserversType._(this.value);

factory DnsSettingsDnsSettingsZonePatchNameserversType.fromJson(String json) { return switch (json) {
  'cloudflare.standard' => cloudflareStandard,
  'custom.account' => customAccount,
  'custom.tenant' => customTenant,
  'custom.zone' => customZone,
  _ => DnsSettingsDnsSettingsZonePatchNameserversType._(json),
}; }

static const DnsSettingsDnsSettingsZonePatchNameserversType cloudflareStandard = DnsSettingsDnsSettingsZonePatchNameserversType._('cloudflare.standard');

static const DnsSettingsDnsSettingsZonePatchNameserversType customAccount = DnsSettingsDnsSettingsZonePatchNameserversType._('custom.account');

static const DnsSettingsDnsSettingsZonePatchNameserversType customTenant = DnsSettingsDnsSettingsZonePatchNameserversType._('custom.tenant');

static const DnsSettingsDnsSettingsZonePatchNameserversType customZone = DnsSettingsDnsSettingsZonePatchNameserversType._('custom.zone');

static const List<DnsSettingsDnsSettingsZonePatchNameserversType> values = [cloudflareStandard, customAccount, customTenant, customZone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsSettingsDnsSettingsZonePatchNameserversType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsSettingsDnsSettingsZonePatchNameserversType($value)'; } 
 }
/// Settings determining the nameservers through which the zone should be available.
final class DnsSettingsDnsSettingsZonePatchNameservers {const DnsSettingsDnsSettingsZonePatchNameservers({this.nsSet, this.type, });

factory DnsSettingsDnsSettingsZonePatchNameservers.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsSettingsZonePatchNameservers(
  nsSet: json['ns_set'] != null ? (json['ns_set'] as num).toInt() : null,
  type: json['type'] != null ? DnsSettingsDnsSettingsZonePatchNameserversType.fromJson(json['type'] as String) : null,
); }

/// Configured nameserver set to be used for this zone
final int? nsSet;

/// Nameserver type
final DnsSettingsDnsSettingsZonePatchNameserversType? type;

Map<String, dynamic> toJson() { return {
  'ns_set': ?nsSet,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ns_set', 'type'}.contains(key)); } 
DnsSettingsDnsSettingsZonePatchNameservers copyWith({int Function()? nsSet, DnsSettingsDnsSettingsZonePatchNameserversType Function()? type, }) { return DnsSettingsDnsSettingsZonePatchNameservers(
  nsSet: nsSet != null ? nsSet() : this.nsSet,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsSettingsZonePatchNameservers &&
          nsSet == other.nsSet &&
          type == other.type; } 
@override int get hashCode { return Object.hash(nsSet, type); } 
@override String toString() { return 'DnsSettingsDnsSettingsZonePatchNameservers(nsSet: $nsSet, type: $type)'; } 
 }
