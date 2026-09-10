// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'service_not_as_described.dart';@immutable final class PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2 {const PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2._(json),
};}

static const PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2 $empty = PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2($value)';}
}

@immutable
final class PostIssuingDisputesRequestEvidenceServiceNotAsDescribed {
  const PostIssuingDisputesRequestEvidenceServiceNotAsDescribed({this.serviceNotAsDescribed = const Omittable.absent(),
this.postIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesRequestEvidenceServiceNotAsDescribed._({required this.rawValue, required this.serviceNotAsDescribed,
required this.postIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2,});
  factory PostIssuingDisputesRequestEvidenceServiceNotAsDescribed.fromJson(Object? json) => PostIssuingDisputesRequestEvidenceServiceNotAsDescribed._(
    rawValue: Omittable(json),
    serviceNotAsDescribed: parseAnyOfVariant<ServiceNotAsDescribed>(json, (value) => ServiceNotAsDescribed.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2: parseAnyOfVariant<PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2>(json, (value) => PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ServiceNotAsDescribed> serviceNotAsDescribed;
final Omittable<PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2> postIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => serviceNotAsDescribed.isPresent || postIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (serviceNotAsDescribed.isPresent) serviceNotAsDescribed.value?.toJson(),
if (postIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2.isPresent) postIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesRequestEvidenceServiceNotAsDescribed && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesRequestEvidenceServiceNotAsDescribed(${toJson()})';
}
