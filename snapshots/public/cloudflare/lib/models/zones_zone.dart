// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_identifier.dart';import 'zones_paused.dart';import 'zones_type.dart';import 'zones_zone_account.dart';import 'zones_zone_meta.dart';import 'zones_zone_owner.dart';import 'zones_zone_plan.dart';import 'zones_zone_tenant.dart';import 'zones_zone_tenant_unit.dart';/// The zone status on Cloudflare.
final class ZonesZoneStatus {const ZonesZoneStatus._(this.value);

factory ZonesZoneStatus.fromJson(String json) { return switch (json) {
  'initializing' => initializing,
  'pending' => pending,
  'active' => active,
  'moved' => moved,
  _ => ZonesZoneStatus._(json),
}; }

static const ZonesZoneStatus initializing = ZonesZoneStatus._('initializing');

static const ZonesZoneStatus pending = ZonesZoneStatus._('pending');

static const ZonesZoneStatus active = ZonesZoneStatus._('active');

static const ZonesZoneStatus moved = ZonesZoneStatus._('moved');

static const List<ZonesZoneStatus> values = [initializing, pending, active, moved];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesZoneStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesZoneStatus($value)'; } 
 }
final class ZonesZone {const ZonesZone({required this.account, required this.activatedOn, this.cnameSuffix, required this.createdOn, required this.developmentMode, required this.id, required this.meta, required this.modifiedOn, required this.name, required this.nameServers, required this.originalDnshost, required this.originalNameServers, required this.originalRegistrar, required this.owner, this.paused, this.permissions, required this.plan, this.status, this.tenant, this.tenantUnit, this.type, this.vanityNameServers = const [], this.verificationKey, });

factory ZonesZone.fromJson(Map<String, dynamic> json) { return ZonesZone(
  account: ZonesZoneAccount.fromJson(json['account'] as Map<String, dynamic>),
  activatedOn: json['activated_on'] != null ? DateTime.parse(json['activated_on'] as String) : null,
  cnameSuffix: json['cname_suffix'] as String?,
  createdOn: DateTime.parse(json['created_on'] as String),
  developmentMode: (json['development_mode'] as num).toDouble(),
  id: ZonesIdentifier.fromJson(json['id'] as String),
  meta: ZonesZoneMeta.fromJson(json['meta'] as Map<String, dynamic>),
  modifiedOn: DateTime.parse(json['modified_on'] as String),
  name: json['name'] as String,
  nameServers: (json['name_servers'] as List<dynamic>).map((e) => e as String).toList(),
  originalDnshost: json['original_dnshost'] as String?,
  originalNameServers: (json['original_name_servers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  originalRegistrar: json['original_registrar'] as String?,
  owner: ZonesZoneOwner.fromJson(json['owner'] as Map<String, dynamic>),
  paused: json['paused'] != null ? ZonesPaused.fromJson(json['paused'] as bool) : null,
  permissions: (json['permissions'] as List<dynamic>?)?.map((e) => e as String).toList(),
  plan: ZonesZonePlan.fromJson(json['plan'] as Map<String, dynamic>),
  status: json['status'] != null ? ZonesZoneStatus.fromJson(json['status'] as String) : null,
  tenant: json['tenant'] != null ? ZonesZoneTenant.fromJson(json['tenant'] as Map<String, dynamic>) : null,
  tenantUnit: json['tenant_unit'] != null ? ZonesZoneTenantUnit.fromJson(json['tenant_unit'] as Map<String, dynamic>) : null,
  type: json['type'] != null ? ZonesType.fromJson(json['type'] as String) : null,
  vanityNameServers: json.containsKey('vanity_name_servers') ? (json['vanity_name_servers'] as List<dynamic>).map((e) => e as String).toList() : const [],
  verificationKey: json['verification_key'] as String?,
); }

/// The account the zone belongs to.
final ZonesZoneAccount account;

/// The last time proof of ownership was detected and the zone was made
/// active.
final DateTime? activatedOn;

/// Allows the customer to use a custom apex.
/// *Tenants Only Configuration*.
final String? cnameSuffix;

/// When the zone was created.
final DateTime createdOn;

/// The interval (in seconds) from when development mode expires
/// (positive integer) or last expired (negative integer) for the
/// domain. If development mode has never been enabled, this value is 0.
final double developmentMode;

/// Identifier
final ZonesIdentifier id;

/// Metadata about the zone.
final ZonesZoneMeta meta;

/// When the zone was last modified.
final DateTime modifiedOn;

/// The domain name. Per [RFC 1035](https://datatracker.ietf.org/doc/html/rfc1035#section-2.3.4) the overall zone name can be up to 253 characters, with each segment ("label") not exceeding 63 characters.
final String name;

/// The name servers Cloudflare assigns to a zone.
final List<String> nameServers;

/// DNS host at the time of switching to Cloudflare.
final String? originalDnshost;

/// Original name servers before moving to Cloudflare.
final List<String>? originalNameServers;

/// Registrar for the domain at the time of switching to Cloudflare.
final String? originalRegistrar;

/// The owner of the zone.
final ZonesZoneOwner owner;

/// Indicates whether the zone is only using Cloudflare DNS services. A
/// true value means the zone will not receive security or performance
/// benefits.
/// 
final ZonesPaused? paused;

/// Legacy permissions based on legacy user membership information.
final List<String>? permissions;

/// A Zones subscription information.
final ZonesZonePlan plan;

/// The zone status on Cloudflare.
final ZonesZoneStatus? status;

/// The root organizational unit that this zone belongs to (such as a tenant or organization).
final ZonesZoneTenant? tenant;

/// The immediate parent organizational unit that this zone belongs to (such as under a tenant or sub-organization).
final ZonesZoneTenantUnit? tenantUnit;

/// A full zone implies that DNS is hosted with Cloudflare. A partial zone is
/// typically a partner-hosted zone or a CNAME setup.
/// 
final ZonesType? type;

/// An array of domains used for custom name servers. This is only available for Business and Enterprise plans.
final List<String> vanityNameServers;

/// Verification key for partial zone setup.
final String? verificationKey;

Map<String, dynamic> toJson() { return {
  'account': account.toJson(),
  if (activatedOn != null) 'activated_on': activatedOn?.toIso8601String(),
  'cname_suffix': ?cnameSuffix,
  'created_on': createdOn.toIso8601String(),
  'development_mode': developmentMode,
  'id': id.toJson(),
  'meta': meta.toJson(),
  'modified_on': modifiedOn.toIso8601String(),
  'name': name,
  'name_servers': nameServers,
  'original_dnshost': ?originalDnshost,
  'original_name_servers': ?originalNameServers,
  'original_registrar': ?originalRegistrar,
  'owner': owner.toJson(),
  if (paused != null) 'paused': paused?.toJson(),
  'permissions': ?permissions,
  'plan': plan.toJson(),
  if (status != null) 'status': status?.toJson(),
  if (tenant != null) 'tenant': tenant?.toJson(),
  if (tenantUnit != null) 'tenant_unit': tenantUnit?.toJson(),
  if (type != null) 'type': type?.toJson(),
  'vanity_name_servers': vanityNameServers,
  'verification_key': ?verificationKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account') &&
      json.containsKey('activated_on') && json['activated_on'] is String &&
      json.containsKey('created_on') && json['created_on'] is String &&
      json.containsKey('development_mode') && json['development_mode'] is num &&
      json.containsKey('id') &&
      json.containsKey('meta') &&
      json.containsKey('modified_on') && json['modified_on'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('name_servers') &&
      json.containsKey('original_dnshost') && json['original_dnshost'] is String &&
      json.containsKey('original_name_servers') &&
      json.containsKey('original_registrar') && json['original_registrar'] is String &&
      json.containsKey('owner') &&
      json.containsKey('plan'); } 
ZonesZone copyWith({ZonesZoneAccount? account, DateTime? Function()? activatedOn, String Function()? cnameSuffix, DateTime? createdOn, double? developmentMode, ZonesIdentifier? id, ZonesZoneMeta? meta, DateTime? modifiedOn, String? name, List<String>? nameServers, String? Function()? originalDnshost, List<String>? Function()? originalNameServers, String? Function()? originalRegistrar, ZonesZoneOwner? owner, ZonesPaused Function()? paused, List<String> Function()? permissions, ZonesZonePlan? plan, ZonesZoneStatus Function()? status, ZonesZoneTenant Function()? tenant, ZonesZoneTenantUnit Function()? tenantUnit, ZonesType Function()? type, List<String> Function()? vanityNameServers, String Function()? verificationKey, }) { return ZonesZone(
  account: account ?? this.account,
  activatedOn: activatedOn != null ? activatedOn() : this.activatedOn,
  cnameSuffix: cnameSuffix != null ? cnameSuffix() : this.cnameSuffix,
  createdOn: createdOn ?? this.createdOn,
  developmentMode: developmentMode ?? this.developmentMode,
  id: id ?? this.id,
  meta: meta ?? this.meta,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  name: name ?? this.name,
  nameServers: nameServers ?? this.nameServers,
  originalDnshost: originalDnshost != null ? originalDnshost() : this.originalDnshost,
  originalNameServers: originalNameServers != null ? originalNameServers() : this.originalNameServers,
  originalRegistrar: originalRegistrar != null ? originalRegistrar() : this.originalRegistrar,
  owner: owner ?? this.owner,
  paused: paused != null ? paused() : this.paused,
  permissions: permissions != null ? permissions() : this.permissions,
  plan: plan ?? this.plan,
  status: status != null ? status() : this.status,
  tenant: tenant != null ? tenant() : this.tenant,
  tenantUnit: tenantUnit != null ? tenantUnit() : this.tenantUnit,
  type: type != null ? type() : this.type,
  vanityNameServers: vanityNameServers != null ? vanityNameServers() : this.vanityNameServers,
  verificationKey: verificationKey != null ? verificationKey() : this.verificationKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesZone &&
          account == other.account &&
          activatedOn == other.activatedOn &&
          cnameSuffix == other.cnameSuffix &&
          createdOn == other.createdOn &&
          developmentMode == other.developmentMode &&
          id == other.id &&
          meta == other.meta &&
          modifiedOn == other.modifiedOn &&
          name == other.name &&
          listEquals(nameServers, other.nameServers) &&
          originalDnshost == other.originalDnshost &&
          listEquals(originalNameServers, other.originalNameServers) &&
          originalRegistrar == other.originalRegistrar &&
          owner == other.owner &&
          paused == other.paused &&
          listEquals(permissions, other.permissions) &&
          plan == other.plan &&
          status == other.status &&
          tenant == other.tenant &&
          tenantUnit == other.tenantUnit &&
          type == other.type &&
          listEquals(vanityNameServers, other.vanityNameServers) &&
          verificationKey == other.verificationKey; } 
@override int get hashCode { return Object.hashAll([account, activatedOn, cnameSuffix, createdOn, developmentMode, id, meta, modifiedOn, name, Object.hashAll(nameServers), originalDnshost, Object.hashAll(originalNameServers ?? const []), originalRegistrar, owner, paused, Object.hashAll(permissions ?? const []), plan, status, tenant, tenantUnit, type, Object.hashAll(vanityNameServers), verificationKey]); } 
@override String toString() { return 'ZonesZone(account: $account, activatedOn: $activatedOn, cnameSuffix: $cnameSuffix, createdOn: $createdOn, developmentMode: $developmentMode, id: $id, meta: $meta, modifiedOn: $modifiedOn, name: $name, nameServers: $nameServers, originalDnshost: $originalDnshost, originalNameServers: $originalNameServers, originalRegistrar: $originalRegistrar, owner: $owner, paused: $paused, permissions: $permissions, plan: $plan, status: $status, tenant: $tenant, tenantUnit: $tenantUnit, type: $type, vanityNameServers: $vanityNameServers, verificationKey: $verificationKey)'; } 
 }
