// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_read_only_timestamp.dart';import 'zero_trust_gateway_uuid.dart';/// Indicate the read-only deployment status of the certificate on Cloudflare's edge. Gateway TLS interception can use certificates in the 'available' (previously called 'active') state.
final class ZeroTrustGatewayBindingStatus {const ZeroTrustGatewayBindingStatus._(this.value);

factory ZeroTrustGatewayBindingStatus.fromJson(String json) { return switch (json) {
  'pending_deployment' => pendingDeployment,
  'available' => available,
  'pending_deletion' => pendingDeletion,
  'inactive' => inactive,
  _ => ZeroTrustGatewayBindingStatus._(json),
}; }

static const ZeroTrustGatewayBindingStatus pendingDeployment = ZeroTrustGatewayBindingStatus._('pending_deployment');

static const ZeroTrustGatewayBindingStatus available = ZeroTrustGatewayBindingStatus._('available');

static const ZeroTrustGatewayBindingStatus pendingDeletion = ZeroTrustGatewayBindingStatus._('pending_deletion');

static const ZeroTrustGatewayBindingStatus inactive = ZeroTrustGatewayBindingStatus._('inactive');

static const List<ZeroTrustGatewayBindingStatus> values = [pendingDeployment, available, pendingDeletion, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZeroTrustGatewayBindingStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayBindingStatus($value)'; } 
 }
/// Indicate the read-only certificate type, BYO-PKI (custom) or Gateway-managed.
final class ZeroTrustGatewayType {const ZeroTrustGatewayType._(this.value);

factory ZeroTrustGatewayType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  'gateway_managed' => gatewayManaged,
  _ => ZeroTrustGatewayType._(json),
}; }

static const ZeroTrustGatewayType custom = ZeroTrustGatewayType._('custom');

static const ZeroTrustGatewayType gatewayManaged = ZeroTrustGatewayType._('gateway_managed');

static const List<ZeroTrustGatewayType> values = [custom, gatewayManaged];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZeroTrustGatewayType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayType($value)'; } 
 }
final class ZeroTrustGatewayCertificates {const ZeroTrustGatewayCertificates({this.bindingStatus, this.certificate, this.createdAt, this.expiresOn, this.fingerprint, this.id, this.inUse, this.issuerOrg, this.issuerRaw, this.type, this.updatedAt, this.uploadedOn, });

factory ZeroTrustGatewayCertificates.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayCertificates(
  bindingStatus: json['binding_status'] != null ? ZeroTrustGatewayBindingStatus.fromJson(json['binding_status'] as String) : null,
  certificate: json['certificate'] as String?,
  createdAt: json['created_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['created_at'] as String) : null,
  expiresOn: json['expires_on'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['expires_on'] as String) : null,
  fingerprint: json['fingerprint'] as String?,
  id: json['id'] != null ? ZeroTrustGatewayUuid.fromJson(json['id'] as String) : null,
  inUse: json['in_use'] as bool?,
  issuerOrg: json['issuer_org'] as String?,
  issuerRaw: json['issuer_raw'] as String?,
  type: json['type'] != null ? ZeroTrustGatewayType.fromJson(json['type'] as String) : null,
  updatedAt: json['updated_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['updated_at'] as String) : null,
  uploadedOn: json['uploaded_on'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['uploaded_on'] as String) : null,
); }

/// Indicate the read-only deployment status of the certificate on Cloudflare's edge. Gateway TLS interception can use certificates in the 'available' (previously called 'active') state.
final ZeroTrustGatewayBindingStatus? bindingStatus;

/// Provide the CA certificate (read-only).
final String? certificate;

final ZeroTrustGatewayReadOnlyTimestamp? createdAt;

final ZeroTrustGatewayReadOnlyTimestamp? expiresOn;

/// Provide the SHA256 fingerprint of the certificate (read-only).
final String? fingerprint;

final ZeroTrustGatewayUuid? id;

/// Indicate whether Gateway TLS interception uses this certificate (read-only). You cannot set this value directly. To configure interception, use the Gateway configuration setting named `certificate` (read-only).
final bool? inUse;

/// Indicate the organization that issued the certificate (read-only).
final String? issuerOrg;

/// Provide the entire issuer field of the certificate (read-only).
final String? issuerRaw;

final ZeroTrustGatewayType? type;

final ZeroTrustGatewayReadOnlyTimestamp? updatedAt;

final ZeroTrustGatewayReadOnlyTimestamp? uploadedOn;

Map<String, dynamic> toJson() { return {
  if (bindingStatus != null) 'binding_status': bindingStatus?.toJson(),
  'certificate': ?certificate,
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (expiresOn != null) 'expires_on': expiresOn?.toJson(),
  'fingerprint': ?fingerprint,
  if (id != null) 'id': id?.toJson(),
  'in_use': ?inUse,
  'issuer_org': ?issuerOrg,
  'issuer_raw': ?issuerRaw,
  if (type != null) 'type': type?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (uploadedOn != null) 'uploaded_on': uploadedOn?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'binding_status', 'certificate', 'created_at', 'expires_on', 'fingerprint', 'id', 'in_use', 'issuer_org', 'issuer_raw', 'type', 'updated_at', 'uploaded_on'}.contains(key)); } 
ZeroTrustGatewayCertificates copyWith({ZeroTrustGatewayBindingStatus Function()? bindingStatus, String Function()? certificate, ZeroTrustGatewayReadOnlyTimestamp Function()? createdAt, ZeroTrustGatewayReadOnlyTimestamp Function()? expiresOn, String Function()? fingerprint, ZeroTrustGatewayUuid Function()? id, bool Function()? inUse, String Function()? issuerOrg, String Function()? issuerRaw, ZeroTrustGatewayType Function()? type, ZeroTrustGatewayReadOnlyTimestamp Function()? updatedAt, ZeroTrustGatewayReadOnlyTimestamp Function()? uploadedOn, }) { return ZeroTrustGatewayCertificates(
  bindingStatus: bindingStatus != null ? bindingStatus() : this.bindingStatus,
  certificate: certificate != null ? certificate() : this.certificate,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  expiresOn: expiresOn != null ? expiresOn() : this.expiresOn,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  id: id != null ? id() : this.id,
  inUse: inUse != null ? inUse() : this.inUse,
  issuerOrg: issuerOrg != null ? issuerOrg() : this.issuerOrg,
  issuerRaw: issuerRaw != null ? issuerRaw() : this.issuerRaw,
  type: type != null ? type() : this.type,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  uploadedOn: uploadedOn != null ? uploadedOn() : this.uploadedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayCertificates &&
          bindingStatus == other.bindingStatus &&
          certificate == other.certificate &&
          createdAt == other.createdAt &&
          expiresOn == other.expiresOn &&
          fingerprint == other.fingerprint &&
          id == other.id &&
          inUse == other.inUse &&
          issuerOrg == other.issuerOrg &&
          issuerRaw == other.issuerRaw &&
          type == other.type &&
          updatedAt == other.updatedAt &&
          uploadedOn == other.uploadedOn; } 
@override int get hashCode { return Object.hash(bindingStatus, certificate, createdAt, expiresOn, fingerprint, id, inUse, issuerOrg, issuerRaw, type, updatedAt, uploadedOn); } 
@override String toString() { return 'ZeroTrustGatewayCertificates(bindingStatus: $bindingStatus, certificate: $certificate, createdAt: $createdAt, expiresOn: $expiresOn, fingerprint: $fingerprint, id: $id, inUse: $inUse, issuerOrg: $issuerOrg, issuerRaw: $issuerRaw, type: $type, updatedAt: $updatedAt, uploadedOn: $uploadedOn)'; } 
 }
