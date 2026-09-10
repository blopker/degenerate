// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsRequestApplicationFeePercentVariant2 {const PostSubscriptionsRequestApplicationFeePercentVariant2._(this.value);

factory PostSubscriptionsRequestApplicationFeePercentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestApplicationFeePercentVariant2._(json),
}; }

static const PostSubscriptionsRequestApplicationFeePercentVariant2 $empty = PostSubscriptionsRequestApplicationFeePercentVariant2._('');

static const List<PostSubscriptionsRequestApplicationFeePercentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestApplicationFeePercentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestApplicationFeePercentVariant2($value)'; } 
 }
/// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
@immutable
final class PostSubscriptionsRequestApplicationFeePercent {
  const PostSubscriptionsRequestApplicationFeePercent({this.$double = const Omittable.absent(),
this.postSubscriptionsRequestApplicationFeePercentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestApplicationFeePercent._({required this.rawValue, required this.$double,
required this.postSubscriptionsRequestApplicationFeePercentVariant2,});
  factory PostSubscriptionsRequestApplicationFeePercent.fromJson(Object? json) => PostSubscriptionsRequestApplicationFeePercent._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postSubscriptionsRequestApplicationFeePercentVariant2: parseAnyOfVariant<PostSubscriptionsRequestApplicationFeePercentVariant2>(json, (value) => PostSubscriptionsRequestApplicationFeePercentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostSubscriptionsRequestApplicationFeePercentVariant2> postSubscriptionsRequestApplicationFeePercentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postSubscriptionsRequestApplicationFeePercentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postSubscriptionsRequestApplicationFeePercentVariant2.isPresent) postSubscriptionsRequestApplicationFeePercentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestApplicationFeePercent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestApplicationFeePercent(${toJson()})';
}
