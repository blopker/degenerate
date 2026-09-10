// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2 {const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2._(this.value);

factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2._(json),
}; }

static const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2 $empty = PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2._('');

static const List<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount {
  const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount({this.$int = const Omittable.absent(),
this.postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount._({required this.rawValue, required this.$int,
required this.postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2,});
  factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount.fromJson(Object? json) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2: parseAnyOfVariant<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2>(json, (value) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2> postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2.isPresent) postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsDiscountAmount(${toJson()})';
}
