// GENERATED CODE - DO NOT MODIFY BY HAND

/// Nameserver type
final class DnsSettingsDnsSettingsAccountPatchNameserversType {const DnsSettingsDnsSettingsAccountPatchNameserversType._(this.value);

factory DnsSettingsDnsSettingsAccountPatchNameserversType.fromJson(String json) { return switch (json) {
  'cloudflare.standard' => cloudflareStandard,
  'cloudflare.standard.random' => cloudflareStandardRandom,
  'custom.account' => customAccount,
  'custom.tenant' => customTenant,
  _ => DnsSettingsDnsSettingsAccountPatchNameserversType._(json),
}; }

static const DnsSettingsDnsSettingsAccountPatchNameserversType cloudflareStandard = DnsSettingsDnsSettingsAccountPatchNameserversType._('cloudflare.standard');

static const DnsSettingsDnsSettingsAccountPatchNameserversType cloudflareStandardRandom = DnsSettingsDnsSettingsAccountPatchNameserversType._('cloudflare.standard.random');

static const DnsSettingsDnsSettingsAccountPatchNameserversType customAccount = DnsSettingsDnsSettingsAccountPatchNameserversType._('custom.account');

static const DnsSettingsDnsSettingsAccountPatchNameserversType customTenant = DnsSettingsDnsSettingsAccountPatchNameserversType._('custom.tenant');

static const List<DnsSettingsDnsSettingsAccountPatchNameserversType> values = [cloudflareStandard, cloudflareStandardRandom, customAccount, customTenant];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsSettingsDnsSettingsAccountPatchNameserversType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsSettingsDnsSettingsAccountPatchNameserversType($value)'; } 
 }
/// Settings determining the nameservers through which the zone should be available.
final class DnsSettingsDnsSettingsAccountPatchNameservers {const DnsSettingsDnsSettingsAccountPatchNameservers({this.type});

factory DnsSettingsDnsSettingsAccountPatchNameservers.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsSettingsAccountPatchNameservers(
  type: json['type'] != null ? DnsSettingsDnsSettingsAccountPatchNameserversType.fromJson(json['type'] as String) : null,
); }

/// Nameserver type
final DnsSettingsDnsSettingsAccountPatchNameserversType? type;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type'}.contains(key)); } 
DnsSettingsDnsSettingsAccountPatchNameservers copyWith({DnsSettingsDnsSettingsAccountPatchNameserversType Function()? type}) { return DnsSettingsDnsSettingsAccountPatchNameservers(
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsSettingsAccountPatchNameservers &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'DnsSettingsDnsSettingsAccountPatchNameservers(type: $type)'; } 
 }
