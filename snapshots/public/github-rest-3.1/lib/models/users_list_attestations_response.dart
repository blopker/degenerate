// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'users_list_attestations_response_attestations.dart';@immutable final class UsersListAttestationsResponse {const UsersListAttestationsResponse({this.attestations});

factory UsersListAttestationsResponse.fromJson(Map<String, dynamic> json) { return UsersListAttestationsResponse(
  attestations: (json['attestations'] as List<dynamic>?)?.map((e) => UsersListAttestationsResponseAttestations.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<UsersListAttestationsResponseAttestations>? attestations;

Map<String, dynamic> toJson() { return {
  if (attestations != null) 'attestations': attestations?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'attestations'}.contains(key)); } 
UsersListAttestationsResponse copyWith({List<UsersListAttestationsResponseAttestations> Function()? attestations}) { return UsersListAttestationsResponse(
  attestations: attestations != null ? attestations() : this.attestations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersListAttestationsResponse &&
          listEquals(attestations, other.attestations); } 
@override int get hashCode { return Object.hashAll(attestations ?? const []).hashCode; } 
@override String toString() { return 'UsersListAttestationsResponse(attestations: $attestations)'; } 
 }
