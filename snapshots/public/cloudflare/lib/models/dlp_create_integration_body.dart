// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_risk_score_integration_type.dart';@immutable final class DlpCreateIntegrationBody {const DlpCreateIntegrationBody({required this.integrationType, required this.tenantUrl, this.referenceId = const Omittable.absent(), });

factory DlpCreateIntegrationBody.fromJson(Map<String, dynamic> json) { return DlpCreateIntegrationBody(
  integrationType: DlpRiskScoreIntegrationType.fromJson(json['integration_type'] as String),
  referenceId: json.containsKey('reference_id') ? Omittable(json['reference_id'] as String?) : const Omittable.absent(),
  tenantUrl: Uri.parse(json['tenant_url'] as String),
); }

final DlpRiskScoreIntegrationType integrationType;

/// A reference id that can be supplied by the client. Currently this should be set to the Access-Okta IDP ID (a UUIDv4).
/// https://developers.cloudflare.com/api/operations/access-identity-providers-get-an-access-identity-provider
final Omittable<String?> referenceId;

/// The base url of the tenant, e.g. "https://tenant.okta.com".
final Uri tenantUrl;

Map<String, dynamic> toJson() { return {
  'integration_type': integrationType.toJson(),
  if (referenceId.isPresent) 'reference_id': referenceId.value,
  'tenant_url': tenantUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('integration_type') &&
      json.containsKey('tenant_url') && json['tenant_url'] is String; } 
DlpCreateIntegrationBody copyWith({DlpRiskScoreIntegrationType? integrationType, Omittable<String?>? referenceId, Uri? tenantUrl, }) { return DlpCreateIntegrationBody(
  integrationType: integrationType ?? this.integrationType,
  referenceId: referenceId ?? this.referenceId,
  tenantUrl: tenantUrl ?? this.tenantUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpCreateIntegrationBody &&
          integrationType == other.integrationType &&
          referenceId == other.referenceId &&
          tenantUrl == other.tenantUrl; } 
@override int get hashCode { return Object.hash(integrationType, referenceId, tenantUrl); } 
@override String toString() { return 'DlpCreateIntegrationBody(integrationType: $integrationType, referenceId: $referenceId, tenantUrl: $tenantUrl)'; } 
 }
