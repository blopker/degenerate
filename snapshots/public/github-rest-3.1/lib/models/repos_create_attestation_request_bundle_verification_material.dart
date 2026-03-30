// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ReposCreateAttestationRequestBundleVerificationMaterial {const ReposCreateAttestationRequestBundleVerificationMaterial({this.additionalProperties = const {}});

factory ReposCreateAttestationRequestBundleVerificationMaterial.fromJson(Map<String, dynamic> json) { return ReposCreateAttestationRequestBundleVerificationMaterial(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ReposCreateAttestationRequestBundleVerificationMaterial copyWith({Map<String, dynamic>? additionalProperties}) { return ReposCreateAttestationRequestBundleVerificationMaterial(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateAttestationRequestBundleVerificationMaterial &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'ReposCreateAttestationRequestBundleVerificationMaterial(additionalProperties: $additionalProperties)'; } 
 }
