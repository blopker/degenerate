// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repos_create_attestation_request_bundle_dsse_envelope.dart';import 'repos_create_attestation_request_bundle_verification_material.dart';/// The attestation's Sigstore Bundle.
/// Refer to the [Sigstore Bundle Specification](https://github.com/sigstore/protobuf-specs/blob/main/protos/sigstore_bundle.proto) for more information.
@immutable final class ReposCreateAttestationRequestBundle {const ReposCreateAttestationRequestBundle({this.mediaType, this.verificationMaterial, this.dsseEnvelope, });

factory ReposCreateAttestationRequestBundle.fromJson(Map<String, dynamic> json) { return ReposCreateAttestationRequestBundle(
  mediaType: json['mediaType'] as String?,
  verificationMaterial: json['verificationMaterial'] != null ? ReposCreateAttestationRequestBundleVerificationMaterial.fromJson(json['verificationMaterial'] as Map<String, dynamic>) : null,
  dsseEnvelope: json['dsseEnvelope'] != null ? ReposCreateAttestationRequestBundleDsseEnvelope.fromJson(json['dsseEnvelope'] as Map<String, dynamic>) : null,
); }

final String? mediaType;

final ReposCreateAttestationRequestBundleVerificationMaterial? verificationMaterial;

final ReposCreateAttestationRequestBundleDsseEnvelope? dsseEnvelope;

Map<String, dynamic> toJson() { return {
  'mediaType': ?mediaType,
  if (verificationMaterial != null) 'verificationMaterial': verificationMaterial?.toJson(),
  if (dsseEnvelope != null) 'dsseEnvelope': dsseEnvelope?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mediaType', 'verificationMaterial', 'dsseEnvelope'}.contains(key)); } 
ReposCreateAttestationRequestBundle copyWith({String Function()? mediaType, ReposCreateAttestationRequestBundleVerificationMaterial Function()? verificationMaterial, ReposCreateAttestationRequestBundleDsseEnvelope Function()? dsseEnvelope, }) { return ReposCreateAttestationRequestBundle(
  mediaType: mediaType != null ? mediaType() : this.mediaType,
  verificationMaterial: verificationMaterial != null ? verificationMaterial() : this.verificationMaterial,
  dsseEnvelope: dsseEnvelope != null ? dsseEnvelope() : this.dsseEnvelope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateAttestationRequestBundle &&
          mediaType == other.mediaType &&
          verificationMaterial == other.verificationMaterial &&
          dsseEnvelope == other.dsseEnvelope; } 
@override int get hashCode { return Object.hash(mediaType, verificationMaterial, dsseEnvelope); } 
@override String toString() { return 'ReposCreateAttestationRequestBundle(mediaType: $mediaType, verificationMaterial: $verificationMaterial, dsseEnvelope: $dsseEnvelope)'; } 
 }
