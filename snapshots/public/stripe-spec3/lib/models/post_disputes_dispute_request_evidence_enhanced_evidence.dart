// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enhanced_evidence2.dart';@immutable final class PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2 {const PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2._(this.value);

factory PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2._(json),
};}

static const PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2 $empty = PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2._('');

static const List<PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2($value)';}
}

@immutable
final class PostDisputesDisputeRequestEvidenceEnhancedEvidence {
  const PostDisputesDisputeRequestEvidenceEnhancedEvidence({this.enhancedEvidence2 = const Omittable.absent(),
this.postDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostDisputesDisputeRequestEvidenceEnhancedEvidence._({required this.rawValue, required this.enhancedEvidence2,
required this.postDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2,});
  factory PostDisputesDisputeRequestEvidenceEnhancedEvidence.fromJson(Object? json) => PostDisputesDisputeRequestEvidenceEnhancedEvidence._(
    rawValue: Omittable(json),
    enhancedEvidence2: parseAnyOfVariant<EnhancedEvidence2>(json, (value) => EnhancedEvidence2.fromJson(value! as Map<String, dynamic>)),
postDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2: parseAnyOfVariant<PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2>(json, (value) => PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<EnhancedEvidence2> enhancedEvidence2;
final Omittable<PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2> postDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => enhancedEvidence2.isPresent || postDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (enhancedEvidence2.isPresent) enhancedEvidence2.value?.toJson(),
if (postDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2.isPresent) postDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostDisputesDisputeRequestEvidenceEnhancedEvidence && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostDisputesDisputeRequestEvidenceEnhancedEvidence(${toJson()})';
}
