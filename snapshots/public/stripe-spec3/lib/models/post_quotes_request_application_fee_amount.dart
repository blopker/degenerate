// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestApplicationFeeAmountVariant2 {const PostQuotesRequestApplicationFeeAmountVariant2._(this.value);

factory PostQuotesRequestApplicationFeeAmountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestApplicationFeeAmountVariant2._(json),
};}

static const PostQuotesRequestApplicationFeeAmountVariant2 $empty = PostQuotesRequestApplicationFeeAmountVariant2._('');

static const List<PostQuotesRequestApplicationFeeAmountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesRequestApplicationFeeAmountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesRequestApplicationFeeAmountVariant2($value)';}
}
/// The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
@immutable
final class PostQuotesRequestApplicationFeeAmount {
  const PostQuotesRequestApplicationFeeAmount({this.$int = const Omittable.absent(),
this.postQuotesRequestApplicationFeeAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestApplicationFeeAmount._({required this.rawValue, required this.$int,
required this.postQuotesRequestApplicationFeeAmountVariant2,});
  factory PostQuotesRequestApplicationFeeAmount.fromJson(Object? json) => PostQuotesRequestApplicationFeeAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postQuotesRequestApplicationFeeAmountVariant2: parseAnyOfVariant<PostQuotesRequestApplicationFeeAmountVariant2>(json, (value) => PostQuotesRequestApplicationFeeAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostQuotesRequestApplicationFeeAmountVariant2> postQuotesRequestApplicationFeeAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postQuotesRequestApplicationFeeAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postQuotesRequestApplicationFeeAmountVariant2.isPresent) postQuotesRequestApplicationFeeAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestApplicationFeeAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestApplicationFeeAmount(${toJson()})';
}
