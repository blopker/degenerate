// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_cert_pack_uuid.dart';import 'tls_certificates_and_hostnames_verification_info.dart';/// Certificate Authority is manually reviewing the order.
extension type const TlsCertificatesAndHostnamesBrandCheck(bool value) {
factory TlsCertificatesAndHostnamesBrandCheck.fromJson(bool json) => TlsCertificatesAndHostnamesBrandCheck(json);

bool toJson() => value;

}
/// Current status of certificate.
@immutable final class TlsCertificatesAndHostnamesCertificateStatus {const TlsCertificatesAndHostnamesCertificateStatus._(this.value);

factory TlsCertificatesAndHostnamesCertificateStatus.fromJson(String json) { return switch (json) {
  'initializing' => initializing,
  'authorizing' => authorizing,
  'active' => active,
  'expired' => expired,
  'issuing' => issuing,
  'timing_out' => timingOut,
  'pending_deployment' => pendingDeployment,
  _ => TlsCertificatesAndHostnamesCertificateStatus._(json),
}; }

static const TlsCertificatesAndHostnamesCertificateStatus initializing = TlsCertificatesAndHostnamesCertificateStatus._('initializing');

static const TlsCertificatesAndHostnamesCertificateStatus authorizing = TlsCertificatesAndHostnamesCertificateStatus._('authorizing');

static const TlsCertificatesAndHostnamesCertificateStatus active = TlsCertificatesAndHostnamesCertificateStatus._('active');

static const TlsCertificatesAndHostnamesCertificateStatus expired = TlsCertificatesAndHostnamesCertificateStatus._('expired');

static const TlsCertificatesAndHostnamesCertificateStatus issuing = TlsCertificatesAndHostnamesCertificateStatus._('issuing');

static const TlsCertificatesAndHostnamesCertificateStatus timingOut = TlsCertificatesAndHostnamesCertificateStatus._('timing_out');

static const TlsCertificatesAndHostnamesCertificateStatus pendingDeployment = TlsCertificatesAndHostnamesCertificateStatus._('pending_deployment');

static const List<TlsCertificatesAndHostnamesCertificateStatus> values = [initializing, authorizing, active, expired, issuing, timingOut, pendingDeployment];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesCertificateStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificateStatus($value)'; } 
 }
/// Certificate's signature algorithm.
@immutable final class TlsCertificatesAndHostnamesSchemasSignature {const TlsCertificatesAndHostnamesSchemasSignature._(this.value);

factory TlsCertificatesAndHostnamesSchemasSignature.fromJson(String json) { return switch (json) {
  'ECDSAWithSHA256' => ecdsaWithSha256,
  'SHA1WithRSA' => sha1WithRsa,
  'SHA256WithRSA' => sha256WithRsa,
  _ => TlsCertificatesAndHostnamesSchemasSignature._(json),
}; }

static const TlsCertificatesAndHostnamesSchemasSignature ecdsaWithSha256 = TlsCertificatesAndHostnamesSchemasSignature._('ECDSAWithSHA256');

static const TlsCertificatesAndHostnamesSchemasSignature sha1WithRsa = TlsCertificatesAndHostnamesSchemasSignature._('SHA1WithRSA');

static const TlsCertificatesAndHostnamesSchemasSignature sha256WithRsa = TlsCertificatesAndHostnamesSchemasSignature._('SHA256WithRSA');

static const List<TlsCertificatesAndHostnamesSchemasSignature> values = [ecdsaWithSha256, sha1WithRsa, sha256WithRsa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesSchemasSignature && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesSchemasSignature($value)'; } 
 }
/// Validation method in use for a certificate pack order.
@immutable final class TlsCertificatesAndHostnamesSchemasValidationMethod {const TlsCertificatesAndHostnamesSchemasValidationMethod._(this.value);

factory TlsCertificatesAndHostnamesSchemasValidationMethod.fromJson(String json) { return switch (json) {
  'http' => http,
  'cname' => cname,
  'txt' => txt,
  _ => TlsCertificatesAndHostnamesSchemasValidationMethod._(json),
}; }

static const TlsCertificatesAndHostnamesSchemasValidationMethod http = TlsCertificatesAndHostnamesSchemasValidationMethod._('http');

static const TlsCertificatesAndHostnamesSchemasValidationMethod cname = TlsCertificatesAndHostnamesSchemasValidationMethod._('cname');

static const TlsCertificatesAndHostnamesSchemasValidationMethod txt = TlsCertificatesAndHostnamesSchemasValidationMethod._('txt');

static const List<TlsCertificatesAndHostnamesSchemasValidationMethod> values = [http, cname, txt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesSchemasValidationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesSchemasValidationMethod($value)'; } 
 }
/// Status of the required verification information, omitted if verification status is unknown.
extension type const TlsCertificatesAndHostnamesVerificationStatus(bool value) {
factory TlsCertificatesAndHostnamesVerificationStatus.fromJson(bool json) => TlsCertificatesAndHostnamesVerificationStatus(json);

bool toJson() => value;

}
/// Method of verification.
@immutable final class TlsCertificatesAndHostnamesVerificationType {const TlsCertificatesAndHostnamesVerificationType._(this.value);

factory TlsCertificatesAndHostnamesVerificationType.fromJson(String json) { return switch (json) {
  'cname' => cname,
  'meta tag' => metaTag,
  _ => TlsCertificatesAndHostnamesVerificationType._(json),
}; }

static const TlsCertificatesAndHostnamesVerificationType cname = TlsCertificatesAndHostnamesVerificationType._('cname');

static const TlsCertificatesAndHostnamesVerificationType metaTag = TlsCertificatesAndHostnamesVerificationType._('meta tag');

static const List<TlsCertificatesAndHostnamesVerificationType> values = [cname, metaTag];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesVerificationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesVerificationType($value)'; } 
 }
@immutable final class TlsCertificatesAndHostnamesVerification {const TlsCertificatesAndHostnamesVerification({required this.certificateStatus, this.brandCheck, this.certPackUuid, this.signature, this.validationMethod, this.verificationInfo, this.verificationStatus, this.verificationType, });

factory TlsCertificatesAndHostnamesVerification.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesVerification(
  brandCheck: json['brand_check'] != null ? TlsCertificatesAndHostnamesBrandCheck.fromJson(json['brand_check'] as bool) : null,
  certPackUuid: json['cert_pack_uuid'] != null ? TlsCertificatesAndHostnamesCertPackUuid.fromJson(json['cert_pack_uuid'] as String) : null,
  certificateStatus: TlsCertificatesAndHostnamesCertificateStatus.fromJson(json['certificate_status'] as String),
  signature: json['signature'] != null ? TlsCertificatesAndHostnamesSchemasSignature.fromJson(json['signature'] as String) : null,
  validationMethod: json['validation_method'] != null ? TlsCertificatesAndHostnamesSchemasValidationMethod.fromJson(json['validation_method'] as String) : null,
  verificationInfo: json['verification_info'] != null ? TlsCertificatesAndHostnamesVerificationInfo.fromJson(json['verification_info'] as Map<String, dynamic>) : null,
  verificationStatus: json['verification_status'] != null ? TlsCertificatesAndHostnamesVerificationStatus.fromJson(json['verification_status'] as bool) : null,
  verificationType: json['verification_type'] != null ? TlsCertificatesAndHostnamesVerificationType.fromJson(json['verification_type'] as String) : null,
); }

/// Certificate Authority is manually reviewing the order.
final TlsCertificatesAndHostnamesBrandCheck? brandCheck;

/// Certificate Pack UUID.
final TlsCertificatesAndHostnamesCertPackUuid? certPackUuid;

/// Current status of certificate.
final TlsCertificatesAndHostnamesCertificateStatus certificateStatus;

/// Certificate's signature algorithm.
final TlsCertificatesAndHostnamesSchemasSignature? signature;

/// Validation method in use for a certificate pack order.
final TlsCertificatesAndHostnamesSchemasValidationMethod? validationMethod;

final TlsCertificatesAndHostnamesVerificationInfo? verificationInfo;

final TlsCertificatesAndHostnamesVerificationStatus? verificationStatus;

final TlsCertificatesAndHostnamesVerificationType? verificationType;

Map<String, dynamic> toJson() { return {
  if (brandCheck != null) 'brand_check': brandCheck?.toJson(),
  if (certPackUuid != null) 'cert_pack_uuid': certPackUuid?.toJson(),
  'certificate_status': certificateStatus.toJson(),
  if (signature != null) 'signature': signature?.toJson(),
  if (validationMethod != null) 'validation_method': validationMethod?.toJson(),
  if (verificationInfo != null) 'verification_info': verificationInfo?.toJson(),
  if (verificationStatus != null) 'verification_status': verificationStatus?.toJson(),
  if (verificationType != null) 'verification_type': verificationType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificate_status'); } 
TlsCertificatesAndHostnamesVerification copyWith({TlsCertificatesAndHostnamesBrandCheck Function()? brandCheck, TlsCertificatesAndHostnamesCertPackUuid Function()? certPackUuid, TlsCertificatesAndHostnamesCertificateStatus? certificateStatus, TlsCertificatesAndHostnamesSchemasSignature Function()? signature, TlsCertificatesAndHostnamesSchemasValidationMethod Function()? validationMethod, TlsCertificatesAndHostnamesVerificationInfo Function()? verificationInfo, TlsCertificatesAndHostnamesVerificationStatus Function()? verificationStatus, TlsCertificatesAndHostnamesVerificationType Function()? verificationType, }) { return TlsCertificatesAndHostnamesVerification(
  brandCheck: brandCheck != null ? brandCheck() : this.brandCheck,
  certPackUuid: certPackUuid != null ? certPackUuid() : this.certPackUuid,
  certificateStatus: certificateStatus ?? this.certificateStatus,
  signature: signature != null ? signature() : this.signature,
  validationMethod: validationMethod != null ? validationMethod() : this.validationMethod,
  verificationInfo: verificationInfo != null ? verificationInfo() : this.verificationInfo,
  verificationStatus: verificationStatus != null ? verificationStatus() : this.verificationStatus,
  verificationType: verificationType != null ? verificationType() : this.verificationType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesVerification &&
          brandCheck == other.brandCheck &&
          certPackUuid == other.certPackUuid &&
          certificateStatus == other.certificateStatus &&
          signature == other.signature &&
          validationMethod == other.validationMethod &&
          verificationInfo == other.verificationInfo &&
          verificationStatus == other.verificationStatus &&
          verificationType == other.verificationType; } 
@override int get hashCode { return Object.hash(brandCheck, certPackUuid, certificateStatus, signature, validationMethod, verificationInfo, verificationStatus, verificationType); } 
@override String toString() { return 'TlsCertificatesAndHostnamesVerification(brandCheck: $brandCheck, certPackUuid: $certPackUuid, certificateStatus: $certificateStatus, signature: $signature, validationMethod: $validationMethod, verificationInfo: $verificationInfo, verificationStatus: $verificationStatus, verificationType: $verificationType)'; } 
 }
