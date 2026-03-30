// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial {const OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial({this.additionalProperties = const {}});

factory OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial.fromJson(Map<String, dynamic> json) { return OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial copyWith({Map<String, dynamic>? additionalProperties}) { return OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial(additionalProperties: $additionalProperties)'; } 
 }
