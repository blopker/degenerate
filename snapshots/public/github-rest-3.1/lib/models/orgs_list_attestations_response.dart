// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'orgs_list_attestations_response_attestations.dart';final class OrgsListAttestationsResponse {const OrgsListAttestationsResponse({this.attestations});

factory OrgsListAttestationsResponse.fromJson(Map<String, dynamic> json) { return OrgsListAttestationsResponse(
  attestations: (json['attestations'] as List<dynamic>?)?.map((e) => OrgsListAttestationsResponseAttestations.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<OrgsListAttestationsResponseAttestations>? attestations;

Map<String, dynamic> toJson() { return {
  if (attestations != null) 'attestations': attestations?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'attestations'}.contains(key)); } 
OrgsListAttestationsResponse copyWith({List<OrgsListAttestationsResponseAttestations> Function()? attestations}) { return OrgsListAttestationsResponse(
  attestations: attestations != null ? attestations() : this.attestations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsListAttestationsResponse &&
          listEquals(attestations, other.attestations); } 
@override int get hashCode { return Object.hashAll(attestations ?? const []).hashCode; } 
@override String toString() { return 'OrgsListAttestationsResponse(attestations: $attestations)'; } 
 }
