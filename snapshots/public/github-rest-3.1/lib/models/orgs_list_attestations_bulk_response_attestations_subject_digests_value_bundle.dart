// GENERATED CODE - DO NOT MODIFY BY HAND

import 'orgs_list_attestations_bulk_response_attestations_subject_digests_value_bundle_dsse_envelope.dart';import 'orgs_list_attestations_bulk_response_attestations_subject_digests_value_bundle_verification_material.dart';/// The bundle of the attestation.
final class OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle {const OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle({this.mediaType, this.verificationMaterial, this.dsseEnvelope, });

factory OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle.fromJson(Map<String, dynamic> json) { return OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle(
  mediaType: json['mediaType'] as String?,
  verificationMaterial: json['verificationMaterial'] != null ? OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial.fromJson(json['verificationMaterial'] as Map<String, dynamic>) : null,
  dsseEnvelope: json['dsseEnvelope'] != null ? OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope.fromJson(json['dsseEnvelope'] as Map<String, dynamic>) : null,
); }

final String? mediaType;

final OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial? verificationMaterial;

final OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope? dsseEnvelope;

Map<String, dynamic> toJson() { return {
  'mediaType': ?mediaType,
  if (verificationMaterial != null) 'verificationMaterial': verificationMaterial?.toJson(),
  if (dsseEnvelope != null) 'dsseEnvelope': dsseEnvelope?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mediaType', 'verificationMaterial', 'dsseEnvelope'}.contains(key)); } 
OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle copyWith({String Function()? mediaType, OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial Function()? verificationMaterial, OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope Function()? dsseEnvelope, }) { return OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle(
  mediaType: mediaType != null ? mediaType() : this.mediaType,
  verificationMaterial: verificationMaterial != null ? verificationMaterial() : this.verificationMaterial,
  dsseEnvelope: dsseEnvelope != null ? dsseEnvelope() : this.dsseEnvelope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle &&
          mediaType == other.mediaType &&
          verificationMaterial == other.verificationMaterial &&
          dsseEnvelope == other.dsseEnvelope; } 
@override int get hashCode { return Object.hash(mediaType, verificationMaterial, dsseEnvelope); } 
@override String toString() { return 'OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle(mediaType: $mediaType, verificationMaterial: $verificationMaterial, dsseEnvelope: $dsseEnvelope)'; } 
 }
