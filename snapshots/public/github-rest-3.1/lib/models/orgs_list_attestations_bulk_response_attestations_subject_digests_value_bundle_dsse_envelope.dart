// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope {const OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope({this.additionalProperties = const {}});

factory OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope.fromJson(Map<String, dynamic> json) { return OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope copyWith({Map<String, dynamic>? additionalProperties}) { return OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'OrgsListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope(additionalProperties: $additionalProperties)'; } 
 }
