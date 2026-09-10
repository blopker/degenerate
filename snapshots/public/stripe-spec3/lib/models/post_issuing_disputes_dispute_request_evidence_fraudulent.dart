// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fraudulent2.dart';@immutable final class PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2 {const PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2._(json),
}; }

static const PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2($value)'; } 
 }

@immutable
final class PostIssuingDisputesDisputeRequestEvidenceFraudulent {
  const PostIssuingDisputesDisputeRequestEvidenceFraudulent({this.fraudulent2 = const Omittable.absent(),
this.postIssuingDisputesDisputeRequestEvidenceFraudulentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesDisputeRequestEvidenceFraudulent._({required this.rawValue, required this.fraudulent2,
required this.postIssuingDisputesDisputeRequestEvidenceFraudulentVariant2,});
  factory PostIssuingDisputesDisputeRequestEvidenceFraudulent.fromJson(Object? json) => PostIssuingDisputesDisputeRequestEvidenceFraudulent._(
    rawValue: Omittable(json),
    fraudulent2: parseAnyOfVariant<Fraudulent2>(json, (value) => Fraudulent2.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesDisputeRequestEvidenceFraudulentVariant2: parseAnyOfVariant<PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2>(json, (value) => PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Fraudulent2> fraudulent2;
final Omittable<PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2> postIssuingDisputesDisputeRequestEvidenceFraudulentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => fraudulent2.isPresent || postIssuingDisputesDisputeRequestEvidenceFraudulentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (fraudulent2.isPresent) fraudulent2.value?.toJson(),
if (postIssuingDisputesDisputeRequestEvidenceFraudulentVariant2.isPresent) postIssuingDisputesDisputeRequestEvidenceFraudulentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesDisputeRequestEvidenceFraudulent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesDisputeRequestEvidenceFraudulent(${toJson()})';
}
