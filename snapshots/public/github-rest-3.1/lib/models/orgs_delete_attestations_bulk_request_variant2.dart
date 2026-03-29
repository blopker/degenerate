// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class OrgsDeleteAttestationsBulkRequestVariant2 {const OrgsDeleteAttestationsBulkRequestVariant2({required this.attestationIds});

factory OrgsDeleteAttestationsBulkRequestVariant2.fromJson(Map<String, dynamic> json) { return OrgsDeleteAttestationsBulkRequestVariant2(
  attestationIds: (json['attestation_ids'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
); }

/// List of unique IDs associated with the artifact attestations to delete.
final List<int> attestationIds;

Map<String, dynamic> toJson() { return {
  'attestation_ids': attestationIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('attestation_ids'); } 
OrgsDeleteAttestationsBulkRequestVariant2 copyWith({List<int>? attestationIds}) { return OrgsDeleteAttestationsBulkRequestVariant2(
  attestationIds: attestationIds ?? this.attestationIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsDeleteAttestationsBulkRequestVariant2 &&
          listEquals(attestationIds, other.attestationIds); } 
@override int get hashCode { return Object.hashAll(attestationIds).hashCode; } 
@override String toString() { return 'OrgsDeleteAttestationsBulkRequestVariant2(attestationIds: $attestationIds)'; } 
 }
