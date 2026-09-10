// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fraudulent.dart';@immutable final class PostIssuingDisputesRequestEvidenceFraudulentVariant2 {const PostIssuingDisputesRequestEvidenceFraudulentVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceFraudulentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceFraudulentVariant2._(json),
}; }

static const PostIssuingDisputesRequestEvidenceFraudulentVariant2 $empty = PostIssuingDisputesRequestEvidenceFraudulentVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceFraudulentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceFraudulentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesRequestEvidenceFraudulentVariant2($value)'; } 
 }

@immutable
final class PostIssuingDisputesRequestEvidenceFraudulent {
  const PostIssuingDisputesRequestEvidenceFraudulent({this.fraudulent = const Omittable.absent(),
this.postIssuingDisputesRequestEvidenceFraudulentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesRequestEvidenceFraudulent._({required this.rawValue, required this.fraudulent,
required this.postIssuingDisputesRequestEvidenceFraudulentVariant2,});
  factory PostIssuingDisputesRequestEvidenceFraudulent.fromJson(Object? json) => PostIssuingDisputesRequestEvidenceFraudulent._(
    rawValue: Omittable(json),
    fraudulent: parseAnyOfVariant<Fraudulent>(json, (value) => Fraudulent.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesRequestEvidenceFraudulentVariant2: parseAnyOfVariant<PostIssuingDisputesRequestEvidenceFraudulentVariant2>(json, (value) => PostIssuingDisputesRequestEvidenceFraudulentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Fraudulent> fraudulent;
final Omittable<PostIssuingDisputesRequestEvidenceFraudulentVariant2> postIssuingDisputesRequestEvidenceFraudulentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => fraudulent.isPresent || postIssuingDisputesRequestEvidenceFraudulentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (fraudulent.isPresent) fraudulent.value?.toJson(),
if (postIssuingDisputesRequestEvidenceFraudulentVariant2.isPresent) postIssuingDisputesRequestEvidenceFraudulentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesRequestEvidenceFraudulent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesRequestEvidenceFraudulent(${toJson()})';
}
