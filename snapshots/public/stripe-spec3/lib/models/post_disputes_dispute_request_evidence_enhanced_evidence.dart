// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enhanced_evidence2.dart';final class PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2 {const PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2._(this.value);

factory PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2._(json),
}; }

static const PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2 $empty = PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2._('');

static const List<PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2($value)'; } 
 }
typedef PostDisputesDisputeRequestEvidenceEnhancedEvidence = OneOf2<EnhancedEvidence2,PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2>;