// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class UsersListAttestationsResponseAttestationsBundleVerificationMaterial {const UsersListAttestationsResponseAttestationsBundleVerificationMaterial({this.additionalProperties = const {}});

factory UsersListAttestationsResponseAttestationsBundleVerificationMaterial.fromJson(Map<String, dynamic> json) { return UsersListAttestationsResponseAttestationsBundleVerificationMaterial(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UsersListAttestationsResponseAttestationsBundleVerificationMaterial copyWith({Map<String, dynamic>? additionalProperties}) { return UsersListAttestationsResponseAttestationsBundleVerificationMaterial(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersListAttestationsResponseAttestationsBundleVerificationMaterial &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'UsersListAttestationsResponseAttestationsBundleVerificationMaterial(additionalProperties: $additionalProperties)'; } 
 }
