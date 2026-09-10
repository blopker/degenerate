// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1.fromJson(String json) {return switch (json) {
  'now' => now,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1._(json),
};}

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1 now = PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1._('now');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1> values = [now];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEnd {
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEnd({this.postInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEnd._({required this.rawValue, required this.postInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1,
required this.$int,});
  factory PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEnd.fromJson(Object? json) => PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEnd._(
    rawValue: Omittable(json),
    postInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1: parseAnyOfVariant<PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1>(json, (value) => PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1> postInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1.isPresent) postInvoicesCreatePreviewRequestSubscriptionDetailsTrialEndVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEnd && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestSubscriptionDetailsTrialEnd(${toJson()})';
}
