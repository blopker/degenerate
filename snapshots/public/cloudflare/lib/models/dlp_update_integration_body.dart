// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpUpdateIntegrationBody {const DlpUpdateIntegrationBody({required this.active, required this.tenantUrl, this.referenceId = const Omittable.absent(), });

factory DlpUpdateIntegrationBody.fromJson(Map<String, dynamic> json) { return DlpUpdateIntegrationBody(
  active: json['active'] as bool,
  referenceId: json.containsKey('reference_id') ? Omittable(json['reference_id'] as String?) : const Omittable.absent(),
  tenantUrl: Uri.parse(json['tenant_url'] as String),
); }

/// Whether this integration is enabled. If disabled, no risk changes will be exported to the third-party.
final bool active;

/// A reference id that can be supplied by the client. Currently this should be set to the Access-Okta IDP ID (a UUIDv4).
/// https://developers.cloudflare.com/api/operations/access-identity-providers-get-an-access-identity-provider
final Omittable<String?> referenceId;

/// The base url of the tenant, e.g. "https://tenant.okta.com".
final Uri tenantUrl;

Map<String, dynamic> toJson() { return {
  'active': active,
  if (referenceId.isPresent) 'reference_id': referenceId.value,
  'tenant_url': tenantUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('active') && json['active'] is bool &&
      json.containsKey('tenant_url') && json['tenant_url'] is String; } 
DlpUpdateIntegrationBody copyWith({bool? active, Omittable<String?>? referenceId, Uri? tenantUrl, }) { return DlpUpdateIntegrationBody(
  active: active ?? this.active,
  referenceId: referenceId ?? this.referenceId,
  tenantUrl: tenantUrl ?? this.tenantUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpUpdateIntegrationBody &&
          active == other.active &&
          referenceId == other.referenceId &&
          tenantUrl == other.tenantUrl; } 
@override int get hashCode { return Object.hash(active, referenceId, tenantUrl); } 
@override String toString() { return 'DlpUpdateIntegrationBody(active: $active, referenceId: $referenceId, tenantUrl: $tenantUrl)'; } 
 }
