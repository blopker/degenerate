// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Nameserver type
@immutable final class DnsSettingsDnsSettingsAccountResponseNameserversType {const DnsSettingsDnsSettingsAccountResponseNameserversType._(this.value);

factory DnsSettingsDnsSettingsAccountResponseNameserversType.fromJson(String json) { return switch (json) {
  'cloudflare.standard' => cloudflareStandard,
  'cloudflare.standard.random' => cloudflareStandardRandom,
  'custom.account' => customAccount,
  'custom.tenant' => customTenant,
  _ => DnsSettingsDnsSettingsAccountResponseNameserversType._(json),
}; }

static const DnsSettingsDnsSettingsAccountResponseNameserversType cloudflareStandard = DnsSettingsDnsSettingsAccountResponseNameserversType._('cloudflare.standard');

static const DnsSettingsDnsSettingsAccountResponseNameserversType cloudflareStandardRandom = DnsSettingsDnsSettingsAccountResponseNameserversType._('cloudflare.standard.random');

static const DnsSettingsDnsSettingsAccountResponseNameserversType customAccount = DnsSettingsDnsSettingsAccountResponseNameserversType._('custom.account');

static const DnsSettingsDnsSettingsAccountResponseNameserversType customTenant = DnsSettingsDnsSettingsAccountResponseNameserversType._('custom.tenant');

static const List<DnsSettingsDnsSettingsAccountResponseNameserversType> values = [cloudflareStandard, cloudflareStandardRandom, customAccount, customTenant];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsSettingsDnsSettingsAccountResponseNameserversType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsSettingsDnsSettingsAccountResponseNameserversType($value)'; } 
 }
/// Settings determining the nameservers through which the zone should be available.
@immutable final class DnsSettingsDnsSettingsAccountResponseNameservers {const DnsSettingsDnsSettingsAccountResponseNameservers({required this.type});

factory DnsSettingsDnsSettingsAccountResponseNameservers.fromJson(Map<String, dynamic> json) { return DnsSettingsDnsSettingsAccountResponseNameservers(
  type: DnsSettingsDnsSettingsAccountResponseNameserversType.fromJson(json['type'] as String),
); }

/// Nameserver type
final DnsSettingsDnsSettingsAccountResponseNameserversType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
DnsSettingsDnsSettingsAccountResponseNameservers copyWith({DnsSettingsDnsSettingsAccountResponseNameserversType? type}) { return DnsSettingsDnsSettingsAccountResponseNameservers(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsDnsSettingsAccountResponseNameservers &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'DnsSettingsDnsSettingsAccountResponseNameservers(type: $type)'; } 
 }
