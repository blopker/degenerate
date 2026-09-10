// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_tax_param5.dart';@immutable final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2 {const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2._(this.value);

factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2._(json),
}; }

static const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2 $empty = PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2._('');

static const List<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax {
  const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax({this.amountDetailsTaxParam5 = const Omittable.absent(),
this.postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax._({required this.rawValue, required this.amountDetailsTaxParam5,
required this.postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2,});
  factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax.fromJson(Object? json) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax._(
    rawValue: Omittable(json),
    amountDetailsTaxParam5: parseAnyOfVariant<AmountDetailsTaxParam5>(json, (value) => AmountDetailsTaxParam5.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2: parseAnyOfVariant<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2>(json, (value) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsTaxParam5> amountDetailsTaxParam5;
final Omittable<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2> postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsTaxParam5.isPresent || postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsTaxParam5.isPresent) amountDetailsTaxParam5.value?.toJson(),
if (postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2.isPresent) postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax(${toJson()})';
}
