// GENERATED CODE - DO NOT MODIFY BY HAND

import 'users_list_attestations_bulk_response_attestations_subject_digests_value_bundle_dsse_envelope.dart';import 'users_list_attestations_bulk_response_attestations_subject_digests_value_bundle_verification_material.dart';/// The bundle of the attestation.
final class UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle {const UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle({this.mediaType, this.verificationMaterial, this.dsseEnvelope, });

factory UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle.fromJson(Map<String, dynamic> json) { return UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle(
  mediaType: json['mediaType'] as String?,
  verificationMaterial: json['verificationMaterial'] != null ? UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial.fromJson(json['verificationMaterial'] as Map<String, dynamic>) : null,
  dsseEnvelope: json['dsseEnvelope'] != null ? UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope.fromJson(json['dsseEnvelope'] as Map<String, dynamic>) : null,
); }

final String? mediaType;

final UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial? verificationMaterial;

final UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope? dsseEnvelope;

Map<String, dynamic> toJson() { return {
  'mediaType': ?mediaType,
  if (verificationMaterial != null) 'verificationMaterial': verificationMaterial?.toJson(),
  if (dsseEnvelope != null) 'dsseEnvelope': dsseEnvelope?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mediaType', 'verificationMaterial', 'dsseEnvelope'}.contains(key)); } 
UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle copyWith({String Function()? mediaType, UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial Function()? verificationMaterial, UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope Function()? dsseEnvelope, }) { return UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle(
  mediaType: mediaType != null ? mediaType() : this.mediaType,
  verificationMaterial: verificationMaterial != null ? verificationMaterial() : this.verificationMaterial,
  dsseEnvelope: dsseEnvelope != null ? dsseEnvelope() : this.dsseEnvelope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle &&
          mediaType == other.mediaType &&
          verificationMaterial == other.verificationMaterial &&
          dsseEnvelope == other.dsseEnvelope; } 
@override int get hashCode { return Object.hash(mediaType, verificationMaterial, dsseEnvelope); } 
@override String toString() { return 'UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle(mediaType: $mediaType, verificationMaterial: $verificationMaterial, dsseEnvelope: $dsseEnvelope)'; } 
 }
