// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class OrgsListAttestationsResponseAttestationsBundleDsseEnvelope {const OrgsListAttestationsResponseAttestationsBundleDsseEnvelope({this.additionalProperties = const {}});

factory OrgsListAttestationsResponseAttestationsBundleDsseEnvelope.fromJson(Map<String, dynamic> json) { return OrgsListAttestationsResponseAttestationsBundleDsseEnvelope(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
OrgsListAttestationsResponseAttestationsBundleDsseEnvelope copyWith({Map<String, dynamic>? additionalProperties}) { return OrgsListAttestationsResponseAttestationsBundleDsseEnvelope(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsListAttestationsResponseAttestationsBundleDsseEnvelope &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'OrgsListAttestationsResponseAttestationsBundleDsseEnvelope(additionalProperties: $additionalProperties)'; } 
 }
