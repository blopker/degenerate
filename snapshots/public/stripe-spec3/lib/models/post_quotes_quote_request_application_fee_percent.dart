// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestApplicationFeePercentVariant2 {const PostQuotesQuoteRequestApplicationFeePercentVariant2._(this.value);

factory PostQuotesQuoteRequestApplicationFeePercentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestApplicationFeePercentVariant2._(json),
}; }

static const PostQuotesQuoteRequestApplicationFeePercentVariant2 $empty = PostQuotesQuoteRequestApplicationFeePercentVariant2._('');

static const List<PostQuotesQuoteRequestApplicationFeePercentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestApplicationFeePercentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestApplicationFeePercentVariant2($value)'; } 
 }
/// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
@immutable
final class PostQuotesQuoteRequestApplicationFeePercent {
  const PostQuotesQuoteRequestApplicationFeePercent({this.$double = const Omittable.absent(),
this.postQuotesQuoteRequestApplicationFeePercentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestApplicationFeePercent._({required this.rawValue, required this.$double,
required this.postQuotesQuoteRequestApplicationFeePercentVariant2,});
  factory PostQuotesQuoteRequestApplicationFeePercent.fromJson(Object? json) => PostQuotesQuoteRequestApplicationFeePercent._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postQuotesQuoteRequestApplicationFeePercentVariant2: parseAnyOfVariant<PostQuotesQuoteRequestApplicationFeePercentVariant2>(json, (value) => PostQuotesQuoteRequestApplicationFeePercentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostQuotesQuoteRequestApplicationFeePercentVariant2> postQuotesQuoteRequestApplicationFeePercentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postQuotesQuoteRequestApplicationFeePercentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postQuotesQuoteRequestApplicationFeePercentVariant2.isPresent) postQuotesQuoteRequestApplicationFeePercentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestApplicationFeePercent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestApplicationFeePercent(${toJson()})';
}
