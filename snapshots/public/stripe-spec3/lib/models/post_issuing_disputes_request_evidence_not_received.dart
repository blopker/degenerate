// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'not_received.dart';@immutable final class PostIssuingDisputesRequestEvidenceNotReceivedVariant2 {const PostIssuingDisputesRequestEvidenceNotReceivedVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceNotReceivedVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceNotReceivedVariant2._(json),
}; }

static const PostIssuingDisputesRequestEvidenceNotReceivedVariant2 $empty = PostIssuingDisputesRequestEvidenceNotReceivedVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceNotReceivedVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceNotReceivedVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesRequestEvidenceNotReceivedVariant2($value)'; } 
 }

@immutable
final class PostIssuingDisputesRequestEvidenceNotReceived {
  const PostIssuingDisputesRequestEvidenceNotReceived({this.notReceived = const Omittable.absent(),
this.postIssuingDisputesRequestEvidenceNotReceivedVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesRequestEvidenceNotReceived._({required this.rawValue, required this.notReceived,
required this.postIssuingDisputesRequestEvidenceNotReceivedVariant2,});
  factory PostIssuingDisputesRequestEvidenceNotReceived.fromJson(Object? json) => PostIssuingDisputesRequestEvidenceNotReceived._(
    rawValue: Omittable(json),
    notReceived: parseAnyOfVariant<NotReceived>(json, (value) => NotReceived.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesRequestEvidenceNotReceivedVariant2: parseAnyOfVariant<PostIssuingDisputesRequestEvidenceNotReceivedVariant2>(json, (value) => PostIssuingDisputesRequestEvidenceNotReceivedVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<NotReceived> notReceived;
final Omittable<PostIssuingDisputesRequestEvidenceNotReceivedVariant2> postIssuingDisputesRequestEvidenceNotReceivedVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => notReceived.isPresent || postIssuingDisputesRequestEvidenceNotReceivedVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (notReceived.isPresent) notReceived.value?.toJson(),
if (postIssuingDisputesRequestEvidenceNotReceivedVariant2.isPresent) postIssuingDisputesRequestEvidenceNotReceivedVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesRequestEvidenceNotReceived && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesRequestEvidenceNotReceived(${toJson()})';
}
