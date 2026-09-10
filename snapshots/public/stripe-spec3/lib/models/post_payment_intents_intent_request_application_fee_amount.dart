// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2 {const PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2._(this.value);

factory PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2 $empty = PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2._('');

static const List<PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2($value)'; } 
 }
/// The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
@immutable
final class PostPaymentIntentsIntentRequestApplicationFeeAmount {
  const PostPaymentIntentsIntentRequestApplicationFeeAmount({this.$int = const Omittable.absent(),
this.postPaymentIntentsIntentRequestApplicationFeeAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestApplicationFeeAmount._({required this.rawValue, required this.$int,
required this.postPaymentIntentsIntentRequestApplicationFeeAmountVariant2,});
  factory PostPaymentIntentsIntentRequestApplicationFeeAmount.fromJson(Object? json) => PostPaymentIntentsIntentRequestApplicationFeeAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postPaymentIntentsIntentRequestApplicationFeeAmountVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2>(json, (value) => PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostPaymentIntentsIntentRequestApplicationFeeAmountVariant2> postPaymentIntentsIntentRequestApplicationFeeAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postPaymentIntentsIntentRequestApplicationFeeAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postPaymentIntentsIntentRequestApplicationFeeAmountVariant2.isPresent) postPaymentIntentsIntentRequestApplicationFeeAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestApplicationFeeAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestApplicationFeeAmount(${toJson()})';
}
