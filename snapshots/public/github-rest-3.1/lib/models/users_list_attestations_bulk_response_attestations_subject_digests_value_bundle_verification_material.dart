// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial {const UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial({this.additionalProperties = const {}});

factory UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial.fromJson(Map<String, dynamic> json) { return UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial copyWith({Map<String, dynamic>? additionalProperties}) { return UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleVerificationMaterial(additionalProperties: $additionalProperties)'; } 
 }
