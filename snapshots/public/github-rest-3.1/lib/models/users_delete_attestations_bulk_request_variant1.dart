// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class UsersDeleteAttestationsBulkRequestVariant1 {const UsersDeleteAttestationsBulkRequestVariant1({required this.subjectDigests});

factory UsersDeleteAttestationsBulkRequestVariant1.fromJson(Map<String, dynamic> json) { return UsersDeleteAttestationsBulkRequestVariant1(
  subjectDigests: (json['subject_digests'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// List of subject digests associated with the artifact attestations to delete.
final List<String> subjectDigests;

Map<String, dynamic> toJson() { return {
  'subject_digests': subjectDigests,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('subject_digests'); } 
UsersDeleteAttestationsBulkRequestVariant1 copyWith({List<String>? subjectDigests}) { return UsersDeleteAttestationsBulkRequestVariant1(
  subjectDigests: subjectDigests ?? this.subjectDigests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersDeleteAttestationsBulkRequestVariant1 &&
          listEquals(subjectDigests, other.subjectDigests); } 
@override int get hashCode { return Object.hashAll(subjectDigests).hashCode; } 
@override String toString() { return 'UsersDeleteAttestationsBulkRequestVariant1(subjectDigests: $subjectDigests)'; } 
 }
