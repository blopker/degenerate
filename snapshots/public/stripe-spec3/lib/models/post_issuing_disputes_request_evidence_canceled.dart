// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'canceled.dart';@immutable final class PostIssuingDisputesRequestEvidenceCanceledVariant2 {const PostIssuingDisputesRequestEvidenceCanceledVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceCanceledVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceCanceledVariant2._(json),
}; }

static const PostIssuingDisputesRequestEvidenceCanceledVariant2 $empty = PostIssuingDisputesRequestEvidenceCanceledVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceCanceledVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceCanceledVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesRequestEvidenceCanceledVariant2($value)'; } 
 }

@immutable
final class PostIssuingDisputesRequestEvidenceCanceled {
  const PostIssuingDisputesRequestEvidenceCanceled({this.canceled = const Omittable.absent(),
this.postIssuingDisputesRequestEvidenceCanceledVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesRequestEvidenceCanceled._({required this.rawValue, required this.canceled,
required this.postIssuingDisputesRequestEvidenceCanceledVariant2,});
  factory PostIssuingDisputesRequestEvidenceCanceled.fromJson(Object? json) => PostIssuingDisputesRequestEvidenceCanceled._(
    rawValue: Omittable(json),
    canceled: parseAnyOfVariant<Canceled>(json, (value) => Canceled.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesRequestEvidenceCanceledVariant2: parseAnyOfVariant<PostIssuingDisputesRequestEvidenceCanceledVariant2>(json, (value) => PostIssuingDisputesRequestEvidenceCanceledVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Canceled> canceled;
final Omittable<PostIssuingDisputesRequestEvidenceCanceledVariant2> postIssuingDisputesRequestEvidenceCanceledVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => canceled.isPresent || postIssuingDisputesRequestEvidenceCanceledVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (canceled.isPresent) canceled.value?.toJson(),
if (postIssuingDisputesRequestEvidenceCanceledVariant2.isPresent) postIssuingDisputesRequestEvidenceCanceledVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesRequestEvidenceCanceled && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesRequestEvidenceCanceled(${toJson()})';
}
