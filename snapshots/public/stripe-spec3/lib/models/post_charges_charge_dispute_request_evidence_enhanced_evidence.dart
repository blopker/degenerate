// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enhanced_evidence.dart';@immutable final class PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2 {const PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2._(this.value);

factory PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2._(json),
};}

static const PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2 $empty = PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2._('');

static const List<PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2($value)';}
}

@immutable
final class PostChargesChargeDisputeRequestEvidenceEnhancedEvidence {
  const PostChargesChargeDisputeRequestEvidenceEnhancedEvidence({this.enhancedEvidence = const Omittable.absent(),
this.postChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostChargesChargeDisputeRequestEvidenceEnhancedEvidence._({required this.rawValue, required this.enhancedEvidence,
required this.postChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2,});
  factory PostChargesChargeDisputeRequestEvidenceEnhancedEvidence.fromJson(Object? json) => PostChargesChargeDisputeRequestEvidenceEnhancedEvidence._(
    rawValue: Omittable(json),
    enhancedEvidence: parseAnyOfVariant<EnhancedEvidence>(json, (value) => EnhancedEvidence.fromJson(value! as Map<String, dynamic>)),
postChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2: parseAnyOfVariant<PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2>(json, (value) => PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<EnhancedEvidence> enhancedEvidence;
final Omittable<PostChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2> postChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => enhancedEvidence.isPresent || postChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (enhancedEvidence.isPresent) enhancedEvidence.value?.toJson(),
if (postChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2.isPresent) postChargesChargeDisputeRequestEvidenceEnhancedEvidenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostChargesChargeDisputeRequestEvidenceEnhancedEvidence && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostChargesChargeDisputeRequestEvidenceEnhancedEvidence(${toJson()})';
}
