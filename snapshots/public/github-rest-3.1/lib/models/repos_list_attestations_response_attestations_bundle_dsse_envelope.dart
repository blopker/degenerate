// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ReposListAttestationsResponseAttestationsBundleDsseEnvelope {const ReposListAttestationsResponseAttestationsBundleDsseEnvelope({this.additionalProperties = const {}});

factory ReposListAttestationsResponseAttestationsBundleDsseEnvelope.fromJson(Map<String, dynamic> json) { return ReposListAttestationsResponseAttestationsBundleDsseEnvelope(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ReposListAttestationsResponseAttestationsBundleDsseEnvelope copyWith({Map<String, dynamic>? additionalProperties}) { return ReposListAttestationsResponseAttestationsBundleDsseEnvelope(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposListAttestationsResponseAttestationsBundleDsseEnvelope &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'ReposListAttestationsResponseAttestationsBundleDsseEnvelope(additionalProperties: $additionalProperties)'; } 
 }
