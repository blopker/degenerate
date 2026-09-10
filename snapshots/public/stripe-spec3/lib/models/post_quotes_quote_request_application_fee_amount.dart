// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestApplicationFeeAmountVariant2 {const PostQuotesQuoteRequestApplicationFeeAmountVariant2._(this.value);

factory PostQuotesQuoteRequestApplicationFeeAmountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestApplicationFeeAmountVariant2._(json),
};}

static const PostQuotesQuoteRequestApplicationFeeAmountVariant2 $empty = PostQuotesQuoteRequestApplicationFeeAmountVariant2._('');

static const List<PostQuotesQuoteRequestApplicationFeeAmountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesQuoteRequestApplicationFeeAmountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesQuoteRequestApplicationFeeAmountVariant2($value)';}
}
/// The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
@immutable
final class PostQuotesQuoteRequestApplicationFeeAmount {
  const PostQuotesQuoteRequestApplicationFeeAmount({this.$int = const Omittable.absent(),
this.postQuotesQuoteRequestApplicationFeeAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestApplicationFeeAmount._({required this.rawValue, required this.$int,
required this.postQuotesQuoteRequestApplicationFeeAmountVariant2,});
  factory PostQuotesQuoteRequestApplicationFeeAmount.fromJson(Object? json) => PostQuotesQuoteRequestApplicationFeeAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postQuotesQuoteRequestApplicationFeeAmountVariant2: parseAnyOfVariant<PostQuotesQuoteRequestApplicationFeeAmountVariant2>(json, (value) => PostQuotesQuoteRequestApplicationFeeAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostQuotesQuoteRequestApplicationFeeAmountVariant2> postQuotesQuoteRequestApplicationFeeAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postQuotesQuoteRequestApplicationFeeAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postQuotesQuoteRequestApplicationFeeAmountVariant2.isPresent) postQuotesQuoteRequestApplicationFeeAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestApplicationFeeAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestApplicationFeeAmount(${toJson()})';
}
