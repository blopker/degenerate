// GENERATED CODE - DO NOT MODIFY BY HAND

import 'orgs_list_attestations_bulk_response_attestations_subject_digests_value_bundle.dart';final class OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValue {const OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValue({this.bundle, this.repositoryId, this.bundleUrl, });

factory OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValue.fromJson(Map<String, dynamic> json) { return OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValue(
  bundle: json['bundle'] != null ? OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle.fromJson(json['bundle'] as Map<String, dynamic>) : null,
  repositoryId: json['repository_id'] != null ? (json['repository_id'] as num).toInt() : null,
  bundleUrl: json['bundle_url'] as String?,
); }

/// The bundle of the attestation.
final OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle? bundle;

final int? repositoryId;

final String? bundleUrl;

Map<String, dynamic> toJson() { return {
  if (bundle != null) 'bundle': bundle?.toJson(),
  'repository_id': ?repositoryId,
  'bundle_url': ?bundleUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValue copyWith({OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundle Function()? bundle, int Function()? repositoryId, String Function()? bundleUrl, }) { return OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValue(
  bundle: bundle != null ? bundle() : this.bundle,
  repositoryId: repositoryId != null ? repositoryId() : this.repositoryId,
  bundleUrl: bundleUrl != null ? bundleUrl() : this.bundleUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValue &&
          bundle == other.bundle &&
          repositoryId == other.repositoryId &&
          bundleUrl == other.bundleUrl; } 
@override int get hashCode { return Object.hash(bundle, repositoryId, bundleUrl); } 
@override String toString() { return 'OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValue(bundle: $bundle, repositoryId: $repositoryId, bundleUrl: $bundleUrl)'; } 
 }
