// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'service_not_as_described2.dart';@immutable final class PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2 {const PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2._(json),
}; }

static const PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2($value)'; } 
 }

@immutable
final class PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribed {
  const PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribed({this.serviceNotAsDescribed2 = const Omittable.absent(),
this.postIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribed._({required this.rawValue, required this.serviceNotAsDescribed2,
required this.postIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2,});
  factory PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribed.fromJson(Object? json) => PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribed._(
    rawValue: Omittable(json),
    serviceNotAsDescribed2: parseAnyOfVariant<ServiceNotAsDescribed2>(json, (value) => ServiceNotAsDescribed2.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2: parseAnyOfVariant<PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2>(json, (value) => PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ServiceNotAsDescribed2> serviceNotAsDescribed2;
final Omittable<PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2> postIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => serviceNotAsDescribed2.isPresent || postIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (serviceNotAsDescribed2.isPresent) serviceNotAsDescribed2.value?.toJson(),
if (postIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2.isPresent) postIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribed && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribed(${toJson()})';
}
