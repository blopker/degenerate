// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestApplicationFeePercentVariant2 {const PostQuotesRequestApplicationFeePercentVariant2._(this.value);

factory PostQuotesRequestApplicationFeePercentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestApplicationFeePercentVariant2._(json),
}; }

static const PostQuotesRequestApplicationFeePercentVariant2 $empty = PostQuotesRequestApplicationFeePercentVariant2._('');

static const List<PostQuotesRequestApplicationFeePercentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestApplicationFeePercentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestApplicationFeePercentVariant2($value)'; } 
 }
/// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
@immutable
final class PostQuotesRequestApplicationFeePercent {
  const PostQuotesRequestApplicationFeePercent({this.$double = const Omittable.absent(),
this.postQuotesRequestApplicationFeePercentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestApplicationFeePercent._({required this.rawValue, required this.$double,
required this.postQuotesRequestApplicationFeePercentVariant2,});
  factory PostQuotesRequestApplicationFeePercent.fromJson(Object? json) => PostQuotesRequestApplicationFeePercent._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postQuotesRequestApplicationFeePercentVariant2: parseAnyOfVariant<PostQuotesRequestApplicationFeePercentVariant2>(json, (value) => PostQuotesRequestApplicationFeePercentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostQuotesRequestApplicationFeePercentVariant2> postQuotesRequestApplicationFeePercentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postQuotesRequestApplicationFeePercentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postQuotesRequestApplicationFeePercentVariant2.isPresent) postQuotesRequestApplicationFeePercentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestApplicationFeePercent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestApplicationFeePercent(${toJson()})';
}
