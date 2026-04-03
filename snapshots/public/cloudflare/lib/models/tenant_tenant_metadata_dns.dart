// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tenant_tenant_metadata_dns_ns_pool.dart';@immutable final class TenantTenantMetadataDns {const TenantTenantMetadataDns({required this.nsPool});

factory TenantTenantMetadataDns.fromJson(Map<String, dynamic> json) { return TenantTenantMetadataDns(
  nsPool: TenantTenantMetadataDnsNsPool.fromJson(json['ns_pool'] as Map<String, dynamic>),
); }

final TenantTenantMetadataDnsNsPool nsPool;

Map<String, dynamic> toJson() { return {
  'ns_pool': nsPool.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ns_pool'); } 
TenantTenantMetadataDns copyWith({TenantTenantMetadataDnsNsPool? nsPool}) { return TenantTenantMetadataDns(
  nsPool: nsPool ?? this.nsPool,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TenantTenantMetadataDns &&
          nsPool == other.nsPool; } 
@override int get hashCode { return nsPool.hashCode; } 
@override String toString() { return 'TenantTenantMetadataDns(nsPool: $nsPool)'; } 
 }
