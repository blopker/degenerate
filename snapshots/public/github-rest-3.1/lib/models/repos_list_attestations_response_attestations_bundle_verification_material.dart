// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ReposListAttestationsResponseAttestationsBundleVerificationMaterial {const ReposListAttestationsResponseAttestationsBundleVerificationMaterial({this.additionalProperties = const {}});

factory ReposListAttestationsResponseAttestationsBundleVerificationMaterial.fromJson(Map<String, dynamic> json) { return ReposListAttestationsResponseAttestationsBundleVerificationMaterial(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ReposListAttestationsResponseAttestationsBundleVerificationMaterial copyWith({Map<String, dynamic>? additionalProperties}) { return ReposListAttestationsResponseAttestationsBundleVerificationMaterial(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposListAttestationsResponseAttestationsBundleVerificationMaterial &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'ReposListAttestationsResponseAttestationsBundleVerificationMaterial(additionalProperties: $additionalProperties)'; } 
 }
