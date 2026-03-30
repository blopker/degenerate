// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ReposCreateAttestationRequestBundleDsseEnvelope {const ReposCreateAttestationRequestBundleDsseEnvelope({this.additionalProperties = const {}});

factory ReposCreateAttestationRequestBundleDsseEnvelope.fromJson(Map<String, dynamic> json) { return ReposCreateAttestationRequestBundleDsseEnvelope(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ReposCreateAttestationRequestBundleDsseEnvelope copyWith({Map<String, dynamic>? additionalProperties}) { return ReposCreateAttestationRequestBundleDsseEnvelope(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateAttestationRequestBundleDsseEnvelope &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'ReposCreateAttestationRequestBundleDsseEnvelope(additionalProperties: $additionalProperties)'; } 
 }
