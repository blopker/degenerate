// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'review_custom_gates_comment_required.dart';import 'review_custom_gates_state_required.dart';
@immutable
final class ActionsReviewCustomGatesForRunRequest {
  const ActionsReviewCustomGatesForRunRequest({this.reviewCustomGatesCommentRequired = const Omittable.absent(),
this.reviewCustomGatesStateRequired = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ActionsReviewCustomGatesForRunRequest._({required this.rawValue, required this.reviewCustomGatesCommentRequired,
required this.reviewCustomGatesStateRequired,});
  factory ActionsReviewCustomGatesForRunRequest.fromJson(Object? json) => ActionsReviewCustomGatesForRunRequest._(
    rawValue: Omittable(json),
    reviewCustomGatesCommentRequired: parseAnyOfVariant<ReviewCustomGatesCommentRequired>(json, (value) => ReviewCustomGatesCommentRequired.fromJson(value! as Map<String, dynamic>)),
reviewCustomGatesStateRequired: parseAnyOfVariant<ReviewCustomGatesStateRequired>(json, (value) => ReviewCustomGatesStateRequired.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ReviewCustomGatesCommentRequired> reviewCustomGatesCommentRequired;
final Omittable<ReviewCustomGatesStateRequired> reviewCustomGatesStateRequired;

  /// Whether at least one known variant matched.
  bool get isValid => reviewCustomGatesCommentRequired.isPresent || reviewCustomGatesStateRequired.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (reviewCustomGatesCommentRequired.isPresent) reviewCustomGatesCommentRequired.value?.toJson(),
if (reviewCustomGatesStateRequired.isPresent) reviewCustomGatesStateRequired.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ActionsReviewCustomGatesForRunRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ActionsReviewCustomGatesForRunRequest(${toJson()})';
}
