// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_grants.dart';final class IamPermissions {const IamPermissions({this.analytics, this.billing, this.cachePurge, this.dns, this.dnsRecords, this.lb, this.logs, this.organization, this.ssl, this.waf, this.zoneSettings, this.zones, });

factory IamPermissions.fromJson(Map<String, dynamic> json) { return IamPermissions(
  analytics: json['analytics'] != null ? IamGrants.fromJson(json['analytics'] as Map<String, dynamic>) : null,
  billing: json['billing'] != null ? IamGrants.fromJson(json['billing'] as Map<String, dynamic>) : null,
  cachePurge: json['cache_purge'] != null ? IamGrants.fromJson(json['cache_purge'] as Map<String, dynamic>) : null,
  dns: json['dns'] != null ? IamGrants.fromJson(json['dns'] as Map<String, dynamic>) : null,
  dnsRecords: json['dns_records'] != null ? IamGrants.fromJson(json['dns_records'] as Map<String, dynamic>) : null,
  lb: json['lb'] != null ? IamGrants.fromJson(json['lb'] as Map<String, dynamic>) : null,
  logs: json['logs'] != null ? IamGrants.fromJson(json['logs'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? IamGrants.fromJson(json['organization'] as Map<String, dynamic>) : null,
  ssl: json['ssl'] != null ? IamGrants.fromJson(json['ssl'] as Map<String, dynamic>) : null,
  waf: json['waf'] != null ? IamGrants.fromJson(json['waf'] as Map<String, dynamic>) : null,
  zoneSettings: json['zone_settings'] != null ? IamGrants.fromJson(json['zone_settings'] as Map<String, dynamic>) : null,
  zones: json['zones'] != null ? IamGrants.fromJson(json['zones'] as Map<String, dynamic>) : null,
); }

final IamGrants? analytics;

final IamGrants? billing;

final IamGrants? cachePurge;

final IamGrants? dns;

final IamGrants? dnsRecords;

final IamGrants? lb;

final IamGrants? logs;

final IamGrants? organization;

final IamGrants? ssl;

final IamGrants? waf;

final IamGrants? zoneSettings;

final IamGrants? zones;

Map<String, dynamic> toJson() { return {
  if (analytics != null) 'analytics': analytics?.toJson(),
  if (billing != null) 'billing': billing?.toJson(),
  if (cachePurge != null) 'cache_purge': cachePurge?.toJson(),
  if (dns != null) 'dns': dns?.toJson(),
  if (dnsRecords != null) 'dns_records': dnsRecords?.toJson(),
  if (lb != null) 'lb': lb?.toJson(),
  if (logs != null) 'logs': logs?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  if (ssl != null) 'ssl': ssl?.toJson(),
  if (waf != null) 'waf': waf?.toJson(),
  if (zoneSettings != null) 'zone_settings': zoneSettings?.toJson(),
  if (zones != null) 'zones': zones?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IamPermissions copyWith({IamGrants Function()? analytics, IamGrants Function()? billing, IamGrants Function()? cachePurge, IamGrants Function()? dns, IamGrants Function()? dnsRecords, IamGrants Function()? lb, IamGrants Function()? logs, IamGrants Function()? organization, IamGrants Function()? ssl, IamGrants Function()? waf, IamGrants Function()? zoneSettings, IamGrants Function()? zones, }) { return IamPermissions(
  analytics: analytics != null ? analytics() : this.analytics,
  billing: billing != null ? billing() : this.billing,
  cachePurge: cachePurge != null ? cachePurge() : this.cachePurge,
  dns: dns != null ? dns() : this.dns,
  dnsRecords: dnsRecords != null ? dnsRecords() : this.dnsRecords,
  lb: lb != null ? lb() : this.lb,
  logs: logs != null ? logs() : this.logs,
  organization: organization != null ? organization() : this.organization,
  ssl: ssl != null ? ssl() : this.ssl,
  waf: waf != null ? waf() : this.waf,
  zoneSettings: zoneSettings != null ? zoneSettings() : this.zoneSettings,
  zones: zones != null ? zones() : this.zones,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamPermissions &&
          analytics == other.analytics &&
          billing == other.billing &&
          cachePurge == other.cachePurge &&
          dns == other.dns &&
          dnsRecords == other.dnsRecords &&
          lb == other.lb &&
          logs == other.logs &&
          organization == other.organization &&
          ssl == other.ssl &&
          waf == other.waf &&
          zoneSettings == other.zoneSettings &&
          zones == other.zones; } 
@override int get hashCode { return Object.hash(analytics, billing, cachePurge, dns, dnsRecords, lb, logs, organization, ssl, waf, zoneSettings, zones); } 
@override String toString() { return 'IamPermissions(analytics: $analytics, billing: $billing, cachePurge: $cachePurge, dns: $dns, dnsRecords: $dnsRecords, lb: $lb, logs: $logs, organization: $organization, ssl: $ssl, waf: $waf, zoneSettings: $zoneSettings, zones: $zones)'; } 
 }
