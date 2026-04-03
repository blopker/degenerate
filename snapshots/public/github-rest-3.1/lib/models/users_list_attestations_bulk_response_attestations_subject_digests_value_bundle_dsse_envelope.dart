// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope {const UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope({this.additionalProperties = const {}});

factory UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope.fromJson(Map<String, dynamic> json) { return UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope(

  additionalProperties: Map.fromEntries(json.entries.where((e) => !const <String>{}.contains(e.key))),
); }

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {

  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope copyWith({Map<String, dynamic>? additionalProperties}) { return UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope(

  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hashAll(additionalProperties.entries).hashCode; } 
@override String toString() { return 'UsersListAttestationsBulkResponseAttestationsSubjectDigestsValueBundleDsseEnvelope(additionalProperties: $additionalProperties)'; } 
 }
