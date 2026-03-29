// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class OrgsDeleteAttestationsBulkRequestVariant1 {const OrgsDeleteAttestationsBulkRequestVariant1({required this.subjectDigests});

factory OrgsDeleteAttestationsBulkRequestVariant1.fromJson(Map<String, dynamic> json) { return OrgsDeleteAttestationsBulkRequestVariant1(
  subjectDigests: (json['subject_digests'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// List of subject digests associated with the artifact attestations to delete.
final List<String> subjectDigests;

Map<String, dynamic> toJson() { return {
  'subject_digests': subjectDigests,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('subject_digests'); } 
OrgsDeleteAttestationsBulkRequestVariant1 copyWith({List<String>? subjectDigests}) { return OrgsDeleteAttestationsBulkRequestVariant1(
  subjectDigests: subjectDigests ?? this.subjectDigests,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsDeleteAttestationsBulkRequestVariant1 &&
          listEquals(subjectDigests, other.subjectDigests); } 
@override int get hashCode { return Object.hashAll(subjectDigests).hashCode; } 
@override String toString() { return 'OrgsDeleteAttestationsBulkRequestVariant1(subjectDigests: $subjectDigests)'; } 
 }
