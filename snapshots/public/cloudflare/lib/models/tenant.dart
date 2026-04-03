// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tenant_tenant_contacts.dart';import 'tenant_tenant_metadata.dart';import 'tenant_unit.dart';@immutable final class Tenant {const Tenant({required this.cdate, required this.edate, required this.tenantContacts, required this.tenantLabels, required this.tenantMetadata, required this.tenantName, required this.tenantNetwork, required this.tenantStatus, required this.tenantTag, required this.tenantType, required this.tenantUnits, this.customerId, });

factory Tenant.fromJson(Map<String, dynamic> json) { return Tenant(
  cdate: DateTime.parse(json['cdate'] as String),
  customerId: json['customer_id'] as String?,
  edate: DateTime.parse(json['edate'] as String),
  tenantContacts: TenantTenantContacts.fromJson(json['tenant_contacts'] as Map<String, dynamic>),
  tenantLabels: (json['tenant_labels'] as List<dynamic>).map((e) => e as String).toList(),
  tenantMetadata: TenantTenantMetadata.fromJson(json['tenant_metadata'] as Map<String, dynamic>),
  tenantName: json['tenant_name'] as String,
  tenantNetwork: json['tenant_network'] as Map<String, dynamic>,
  tenantStatus: json['tenant_status'] as String,
  tenantTag: json['tenant_tag'] as String,
  tenantType: json['tenant_type'] as String,
  tenantUnits: (json['tenant_units'] as List<dynamic>).map((e) => TenantUnit.fromJson(e as Map<String, dynamic>)).toList(),
); }

final DateTime cdate;

final String? customerId;

final DateTime edate;

final TenantTenantContacts tenantContacts;

final List<String> tenantLabels;

final TenantTenantMetadata tenantMetadata;

final String tenantName;

final Map<String,dynamic> tenantNetwork;

final String tenantStatus;

final String tenantTag;

final String tenantType;

final List<TenantUnit> tenantUnits;

Map<String, dynamic> toJson() { return {
  'cdate': cdate.toIso8601String(),
  'customer_id': ?customerId,
  'edate': edate.toIso8601String(),
  'tenant_contacts': tenantContacts.toJson(),
  'tenant_labels': tenantLabels,
  'tenant_metadata': tenantMetadata.toJson(),
  'tenant_name': tenantName,
  'tenant_network': tenantNetwork,
  'tenant_status': tenantStatus,
  'tenant_tag': tenantTag,
  'tenant_type': tenantType,
  'tenant_units': tenantUnits.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cdate') && json['cdate'] is String &&
      json.containsKey('edate') && json['edate'] is String &&
      json.containsKey('tenant_contacts') &&
      json.containsKey('tenant_labels') &&
      json.containsKey('tenant_metadata') &&
      json.containsKey('tenant_name') && json['tenant_name'] is String &&
      json.containsKey('tenant_network') &&
      json.containsKey('tenant_status') && json['tenant_status'] is String &&
      json.containsKey('tenant_tag') && json['tenant_tag'] is String &&
      json.containsKey('tenant_type') && json['tenant_type'] is String &&
      json.containsKey('tenant_units'); } 
Tenant copyWith({DateTime? cdate, String Function()? customerId, DateTime? edate, TenantTenantContacts? tenantContacts, List<String>? tenantLabels, TenantTenantMetadata? tenantMetadata, String? tenantName, Map<String,dynamic>? tenantNetwork, String? tenantStatus, String? tenantTag, String? tenantType, List<TenantUnit>? tenantUnits, }) { return Tenant(
  cdate: cdate ?? this.cdate,
  customerId: customerId != null ? customerId() : this.customerId,
  edate: edate ?? this.edate,
  tenantContacts: tenantContacts ?? this.tenantContacts,
  tenantLabels: tenantLabels ?? this.tenantLabels,
  tenantMetadata: tenantMetadata ?? this.tenantMetadata,
  tenantName: tenantName ?? this.tenantName,
  tenantNetwork: tenantNetwork ?? this.tenantNetwork,
  tenantStatus: tenantStatus ?? this.tenantStatus,
  tenantTag: tenantTag ?? this.tenantTag,
  tenantType: tenantType ?? this.tenantType,
  tenantUnits: tenantUnits ?? this.tenantUnits,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Tenant &&
          cdate == other.cdate &&
          customerId == other.customerId &&
          edate == other.edate &&
          tenantContacts == other.tenantContacts &&
          listEquals(tenantLabels, other.tenantLabels) &&
          tenantMetadata == other.tenantMetadata &&
          tenantName == other.tenantName &&
          tenantNetwork == other.tenantNetwork &&
          tenantStatus == other.tenantStatus &&
          tenantTag == other.tenantTag &&
          tenantType == other.tenantType &&
          listEquals(tenantUnits, other.tenantUnits); } 
@override int get hashCode { return Object.hash(cdate, customerId, edate, tenantContacts, Object.hashAll(tenantLabels), tenantMetadata, tenantName, tenantNetwork, tenantStatus, tenantTag, tenantType, Object.hashAll(tenantUnits)); } 
@override String toString() { return 'Tenant(cdate: $cdate, customerId: $customerId, edate: $edate, tenantContacts: $tenantContacts, tenantLabels: $tenantLabels, tenantMetadata: $tenantMetadata, tenantName: $tenantName, tenantNetwork: $tenantNetwork, tenantStatus: $tenantStatus, tenantTag: $tenantTag, tenantType: $tenantType, tenantUnits: $tenantUnits)'; } 
 }
