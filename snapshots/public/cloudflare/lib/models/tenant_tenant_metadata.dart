// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tenant_tenant_metadata_dns.dart';@immutable final class TenantTenantMetadata {const TenantTenantMetadata({this.dns});

factory TenantTenantMetadata.fromJson(Map<String, dynamic> json) { return TenantTenantMetadata(
  dns: json['dns'] != null ? TenantTenantMetadataDns.fromJson(json['dns'] as Map<String, dynamic>) : null,
); }

final TenantTenantMetadataDns? dns;

Map<String, dynamic> toJson() { return {
  if (dns != null) 'dns': dns?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dns'}.contains(key)); } 
TenantTenantMetadata copyWith({TenantTenantMetadataDns Function()? dns}) { return TenantTenantMetadata(
  dns: dns != null ? dns() : this.dns,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TenantTenantMetadata &&
          dns == other.dns; } 
@override int get hashCode { return dns.hashCode; } 
@override String toString() { return 'TenantTenantMetadata(dns: $dns)'; } 
 }
