// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsersListAttestationsResponseAttestationsBundleDsseEnvelope {const UsersListAttestationsResponseAttestationsBundleDsseEnvelope({this.additionalProperties = const {}});

factory UsersListAttestationsResponseAttestationsBundleDsseEnvelope.fromJson(Map<String, dynamic> json) { return UsersListAttestationsResponseAttestationsBundleDsseEnvelope(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UsersListAttestationsResponseAttestationsBundleDsseEnvelope copyWith({Map<String, dynamic>? additionalProperties}) { return UsersListAttestationsResponseAttestationsBundleDsseEnvelope(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersListAttestationsResponseAttestationsBundleDsseEnvelope &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'UsersListAttestationsResponseAttestationsBundleDsseEnvelope(additionalProperties: $additionalProperties)'; } 
 }
